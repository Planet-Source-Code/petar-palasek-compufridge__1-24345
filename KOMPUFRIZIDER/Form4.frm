VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form Form4 
   BackColor       =   &H80000012&
   BorderStyle     =   0  'None
   Caption         =   " Generalne Pripreme"
   ClientHeight    =   1710
   ClientLeft      =   0
   ClientTop       =   -45
   ClientWidth     =   7740
   Icon            =   "Form4.frx":0000
   LinkTopic       =   "Form4"
   MouseIcon       =   "Form4.frx":030A
   MousePointer    =   99  'Custom
   ScaleHeight     =   1710
   ScaleWidth      =   7740
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   240
      Top             =   1800
   End
   Begin ComctlLib.ProgressBar Onacrta2 
      Height          =   375
      Left            =   480
      TabIndex        =   0
      Top             =   1080
      Width           =   6375
      _ExtentX        =   11245
      _ExtentY        =   661
      _Version        =   327682
      Appearance      =   1
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000012&
      Caption         =   "Loading..."
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000018&
      Height          =   615
      Left            =   480
      TabIndex        =   1
      Top             =   360
      Width           =   11295
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long
Private Sub Form_Load()
Timer1.Enabled = True
End Sub



Private Sub Timer1_Timer()
Onacrta2.Value = Onacrta2.Value + 1
If Onacrta2.Value = 15 Then Label1.Caption = "Cleaning the fridge..."
If Onacrta2.Value = 30 Then Label1.Caption = "Making the fridge cold..."
If Onacrta2.Value = 45 Then Label1.Caption = "Loading..."
If Onacrta2.Value = 65 Then Label1.Caption = "Loading data for the first use..."
If Onacrta2.Value = 90 Then
Label1.Caption = "Opening the fridge..."
End If
If Onacrta2.Value = 95 Then mciSendString "set CDaudio door open", t, 127, 0
If Onacrta2.Value = 100 Then Timer1.Enabled = False
If Onacrta2.Value = 100 Then
Form5.Show
Unload Me
End If
End Sub
