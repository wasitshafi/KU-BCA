VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00404040&
   Caption         =   "Random numbers"
   ClientHeight    =   7065
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14790
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7065
   ScaleWidth      =   14790
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "display value of rnd"
      Height          =   735
      Left            =   2640
      TabIndex        =   6
      Top             =   3720
      Width           =   1695
   End
   Begin VB.Timer Timercolorchange 
      Interval        =   1000
      Left            =   13200
      Top             =   2760
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   480
      Top             =   1680
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5040
      TabIndex        =   1
      Top             =   2760
      Width           =   5055
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00404040&
      Caption         =   "Generate random no."
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5760
      TabIndex        =   0
      Top             =   3840
      Width           =   3495
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00404040&
      BackStyle       =   0  'Transparent
      Caption         =   "DATE "
      BeginProperty Font 
         Name            =   "Courier"
         Size            =   18.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   5
      Top             =   360
      Width           =   1125
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00404040&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Courier"
         Size            =   18.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2040
      TabIndex        =   4
      Top             =   360
      Width           =   225
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackColor       =   &H00404040&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Courier"
         Size            =   18.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2040
      TabIndex        =   3
      Top             =   960
      Width           =   225
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackColor       =   &H00404040&
      BackStyle       =   0  'Transparent
      Caption         =   "TIME "
      BeginProperty Font 
         Name            =   "Courier"
         Size            =   18.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   2
      Top             =   960
      Width           =   1125
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim r As Integer
Dim g As Integer
Dim b As Integer

Private Sub Command1_Click()
Dim no As Integer

no = Int(Rnd * 1000) ' multipied by 100 because to make 3 digit no (max =999)
Text1.Text = no
End Sub

Private Sub Command2_Click()
MsgBox Rnd

End Sub

Private Sub Form_Load()
Label2.Caption = Date
Label4.Caption = Time
r = 0
g = 0
b = 0
End Sub

Private Sub Timer1_Timer()
Label2.Caption = Date
Label4.Caption = Time

End Sub

Private Sub Timercolorchange_Timer()
r = Int(Int(Rnd * 1000) / 256)
g = Int(Int(Rnd * 1000) / 256)
b = Int(Int(Rnd * 1000) / 256)



Form1.BackColor = RGB(r, g, b)

End Sub
