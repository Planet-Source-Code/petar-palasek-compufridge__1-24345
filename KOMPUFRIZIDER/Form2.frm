VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form Form2 
   BackColor       =   &H80000017&
   BorderStyle     =   0  'None
   Caption         =   "Pripremam..."
   ClientHeight    =   2235
   ClientLeft      =   0
   ClientTop       =   -45
   ClientWidth     =   6420
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MouseIcon       =   "Form2.frx":030A
   MousePointer    =   99  'Custom
   ScaleHeight     =   23352.69
   ScaleMode       =   0  'User
   ScaleWidth      =   6420
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin ComctlLib.ProgressBar onacrta1 
      DragIcon        =   "Form2.frx":0614
      Height          =   375
      Left            =   360
      Negotiate       =   -1  'True
      TabIndex        =   1
      Top             =   1080
      Width           =   5175
      _ExtentX        =   9128
      _ExtentY        =   661
      _Version        =   327682
      BorderStyle     =   1
      Appearance      =   1
      MouseIcon       =   "Form2.frx":0A56
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   600
      Top             =   1920
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000012&
      Caption         =   "Cancel"
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
      Height          =   495
      Left            =   4560
      MouseIcon       =   "Form2.frx":0D70
      MousePointer    =   99  'Custom
      TabIndex        =   2
      Top             =   1680
      Width           =   1335
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000012&
      Caption         =   "Loading..."
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000018&
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   3135
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Timer1.Enabled = True
End Sub



Private Sub Label2_Click()
Timer1.Enabled = False
End
End Sub

Private Sub Timer1_Timer()
onacrta1.Value = onacrta1.Value + 1
If onacrta1.Value = 100 Then Timer1.Enabled = False
If onacrta1.Value = 100 Then
Form3.Show
Unload Me
End If
End Sub
