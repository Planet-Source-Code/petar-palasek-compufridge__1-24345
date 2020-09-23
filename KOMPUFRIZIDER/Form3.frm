VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H80000012&
   BorderStyle     =   0  'None
   Caption         =   "Predstavljanje"
   ClientHeight    =   8535
   ClientLeft      =   105
   ClientTop       =   105
   ClientWidth     =   11880
   Icon            =   "Form3.frx":0000
   LinkTopic       =   "Form3"
   MouseIcon       =   "Form3.frx":030A
   MousePointer    =   99  'Custom
   ScaleHeight     =   8535
   ScaleWidth      =   11880
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.Label Label3 
      BackColor       =   &H80000012&
      Caption         =   "I WANT to se that invention!!!"
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
      Left            =   6000
      MouseIcon       =   "Form3.frx":0614
      MousePointer    =   99  'Custom
      TabIndex        =   2
      Top             =   7680
      Width           =   5535
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000012&
      Caption         =   "OK! EXIT!!!"
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
      Left            =   240
      MouseIcon       =   "Form3.frx":091E
      MousePointer    =   99  'Custom
      TabIndex        =   1
      Top             =   7680
      Width           =   4815
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000012&
      Caption         =   $"Form3.frx":0C28
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
      Height          =   2895
      Left            =   3240
      TabIndex        =   0
      Top             =   1920
      Width           =   7215
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Label2_Click()
End
End Sub

Private Sub Label3_Click()
Form4.Show
Unload Me
End Sub
