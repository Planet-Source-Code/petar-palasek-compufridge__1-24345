VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000012&
   BorderStyle     =   0  'None
   Caption         =   "Najnoviji izum svih vremena"
   ClientHeight    =   8535
   ClientLeft      =   105
   ClientTop       =   105
   ClientWidth     =   11880
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MouseIcon       =   "Form1.frx":030A
   MousePointer    =   99  'Custom
   ScaleHeight     =   8535
   ScaleWidth      =   11880
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   5175
      Left            =   3120
      Picture         =   "Form1.frx":0614
      ScaleHeight     =   5175
      ScaleWidth      =   2895
      TabIndex        =   0
      Top             =   1440
      Width           =   2895
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000017&
      Caption         =   "Exit!!!"
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
      Left            =   2400
      MouseIcon       =   "Form1.frx":B3EB
      MousePointer    =   99  'Custom
      TabIndex        =   3
      Top             =   7920
      Width           =   3495
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000017&
      Caption         =   "Try it!!!"
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
      Left            =   9360
      MouseIcon       =   "Form1.frx":B6F5
      MousePointer    =   99  'Custom
      TabIndex        =   2
      Top             =   7800
      Width           =   4695
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000012&
      Caption         =   "Have you ever wanted to eat when you were on your computer??? If so then try our new invention! COMPUFRIDGE!"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000018&
      Height          =   4455
      Left            =   6600
      TabIndex        =   1
      Top             =   1800
      Width           =   4455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub Label2_Click()
Form2.Show
Unload Me
End Sub

Private Sub Label3_Click()
End
End Sub
