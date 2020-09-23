VERSION 5.00
Begin VB.Form Form5 
   BackColor       =   &H80000012&
   BorderStyle     =   0  'None
   Caption         =   "Gotovo!!!"
   ClientHeight    =   4260
   ClientLeft      =   0
   ClientTop       =   -45
   ClientWidth     =   7110
   Icon            =   "Form5.frx":0000
   LinkTopic       =   "Form5"
   MouseIcon       =   "Form5.frx":030A
   MousePointer    =   99  'Custom
   ScaleHeight     =   4260
   ScaleWidth      =   7110
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label Label3 
      BackColor       =   &H80000012&
      Caption         =   "EXIT!!!!!"
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
      Left            =   360
      MouseIcon       =   "Form5.frx":0614
      MousePointer    =   99  'Custom
      TabIndex        =   2
      Top             =   3240
      Width           =   2895
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000012&
      Caption         =   "Press here to close the COMPUFRIDGE, but only if you put your salami in it!"
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
      Height          =   1455
      Left            =   360
      MouseIcon       =   "Form5.frx":091E
      MousePointer    =   99  'Custom
      TabIndex        =   1
      Top             =   1440
      Width           =   6135
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000012&
      Caption         =   "Put your salami into the fridge!!!"
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
      Height          =   975
      Left            =   360
      TabIndex        =   0
      Top             =   600
      Width           =   6735
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long

Private Sub Form_Unload(Cancel As Integer)
MsgBox "         Oprostite na bezobraznosti         ", vbExclamation, "COMPUFRIDGE"
mciSendString "set CDaudio door closed", t, 127, 0
End
End Sub

Private Sub Label2_Click()
mciSendString "set CDaudio door closed", t, 127, 0
End
End Sub

Private Sub Label3_Click()
MsgBox "         Sorry!!!         ", vbExclamation, "COMPUFRIDGE"
mciSendString "set CDaudio door closed", t, 127, 0
End
End Sub
