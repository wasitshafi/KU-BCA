VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5040
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8370
   LinkTopic       =   "Form1"
   ScaleHeight     =   5040
   ScaleWidth      =   8370
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   6000
      TabIndex        =   3
      Text            =   "Text1"
      Top             =   840
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "font"
      Height          =   855
      Left            =   6120
      TabIndex        =   2
      Top             =   2640
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "color"
      Height          =   855
      Left            =   3840
      TabIndex        =   1
      Top             =   2640
      Width           =   1455
   End
   Begin MSComDlg.CommonDialog cd1 
      Left            =   1680
      Top             =   1800
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Segoe Print"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4080
      TabIndex        =   0
      Top             =   840
      Width           =   945
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
cd1.ShowColor
Label1.ForeColor = cd1.Color
Text1.ForeColor = cd1.Color

End Sub

Private Sub Command2_Click()
cd1.ShowFont
Label1.FontSize = cd1.FontSize
Label1.Font = cd1.FontName
End Sub

