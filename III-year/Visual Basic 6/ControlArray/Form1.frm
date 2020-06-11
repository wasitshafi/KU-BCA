VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H8000000D&
   Caption         =   "Form1"
   ClientHeight    =   7695
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14025
   LinkTopic       =   "Form1"
   ScaleHeight     =   7695
   ScaleWidth      =   14025
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Interval        =   300
      Left            =   9360
      Top             =   240
   End
   Begin VB.TextBox txtarr 
      Height          =   615
      Index           =   1
      Left            =   4320
      TabIndex        =   2
      Text            =   "Text1"
      Top             =   2640
      Width           =   3015
   End
   Begin VB.TextBox txtarr 
      Height          =   615
      Index           =   0
      Left            =   4320
      TabIndex        =   1
      Text            =   "This is textbox1 text"
      Top             =   1800
      Width           =   3015
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Add a Text Box"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   4080
      TabIndex        =   0
      Top             =   480
      Width           =   3495
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Enter Text "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2040
      TabIndex        =   7
      Top             =   1920
      Width           =   1935
   End
   Begin VB.Label lbllbound 
      AutoSize        =   -1  'True
      Caption         =   "  "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   9240
      TabIndex        =   6
      Top             =   1560
      Width           =   180
   End
   Begin VB.Label lblcount 
      AutoSize        =   -1  'True
      Caption         =   "  "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   9240
      TabIndex        =   5
      Top             =   2160
      Width           =   180
   End
   Begin VB.Label lblitem 
      AutoSize        =   -1  'True
      Caption         =   "  "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   9240
      TabIndex        =   4
      Top             =   2760
      Width           =   180
   End
   Begin VB.Label lblubound 
      AutoSize        =   -1  'True
      Caption         =   "  "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   9240
      TabIndex        =   3
      Top             =   960
      Width           =   180
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim i As Integer
i = txtarr().UBound
Load txtarr(i + 1)
txtarr(i + 1).Visible = True
txtarr(i + 1).Top = txtarr(i).Top + txtarr(i).Height + 100
txtarr(i + 1).Left = txtarr(i).Left
End Sub



Private Sub Timer1_Timer()
lbllbound.Caption = "Lbound is  : " & txtarr.LBound
lblubound.Caption = "Ubound is  : " & txtarr.UBound + 1
lblcount.Caption = "Count is  : " & txtarr.Count
lblitem.Caption = txtarr.Item(0).Text

End Sub
