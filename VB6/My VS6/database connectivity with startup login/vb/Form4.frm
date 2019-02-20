VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "Dynamic adodc control 2"
   ClientHeight    =   6855
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14835
   LinkTopic       =   "Form4"
   ScaleHeight     =   10935
   ScaleWidth      =   20250
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "DYNAMIC ADODB"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   17520
      TabIndex        =   14
      Top             =   480
      Width           =   2580
   End
   Begin VB.CommandButton btgotoform1 
      Caption         =   "DATA CONTROL"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   12105
      TabIndex        =   13
      Top             =   500
      Width           =   2280
   End
   Begin VB.CommandButton btgotoform2 
      Caption         =   "ADODC CONTROL"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   14595
      TabIndex        =   12
      Top             =   500
      Width           =   2580
   End
   Begin VB.TextBox txtbname 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   465
      Left            =   9000
      TabIndex        =   5
      Top             =   1800
      Width           =   3015
   End
   Begin VB.TextBox txtbresult 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   465
      Left            =   9000
      TabIndex        =   4
      Top             =   5300
      Width           =   3015
   End
   Begin VB.TextBox txtbemailid 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   465
      Left            =   9000
      TabIndex        =   3
      Top             =   4600
      Width           =   3015
   End
   Begin VB.TextBox txtbcontactno 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   465
      Left            =   9000
      TabIndex        =   2
      Top             =   3900
      Width           =   3015
   End
   Begin VB.TextBox txtbaddress 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   465
      Left            =   9000
      TabIndex        =   1
      Top             =   3200
      Width           =   3015
   End
   Begin VB.TextBox txtbrollno 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   465
      Left            =   9000
      TabIndex        =   0
      Top             =   2500
      Width           =   3015
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Name:  "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   390
      Left            =   7500
      TabIndex        =   11
      Top             =   1800
      Width           =   1020
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Email-id: "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   390
      Left            =   7500
      TabIndex        =   10
      Top             =   4600
      Width           =   1215
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Contact no: "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   390
      Index           =   0
      Left            =   7500
      TabIndex        =   9
      Top             =   3900
      Width           =   1575
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Address: "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   390
      Index           =   1
      Left            =   7500
      TabIndex        =   8
      Top             =   3200
      Width           =   1260
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Result: "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   390
      Left            =   7500
      TabIndex        =   7
      Top             =   5300
      Width           =   990
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Rollno: "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   390
      Left            =   7500
      TabIndex        =   6
      Top             =   2500
      Width           =   960
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btgotoform1_Click()
Unload Me
Form1.Show
End Sub

Private Sub btgotoform2_Click()
Unload Me
Form2.Show
End Sub

Private Sub Command2_Click()
Unload Me
Form3.Show
End Sub

Private Sub Form_Load()

End Sub
