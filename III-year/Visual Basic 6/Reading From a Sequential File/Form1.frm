VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8175
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14175
   LinkTopic       =   "Form1"
   ScaleHeight     =   8175
   ScaleWidth      =   14175
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command4 
      Caption         =   "Read All file"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2280
      TabIndex        =   7
      Top             =   7440
      Width           =   1335
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Read first 5 lines"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3840
      TabIndex        =   6
      Top             =   7440
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Read first 5 lines"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   5400
      TabIndex        =   5
      Top             =   7440
      Width           =   1335
   End
   Begin RichTextLib.RichTextBox rtb1 
      Height          =   6135
      Left            =   480
      TabIndex        =   2
      Top             =   840
      Width           =   12495
      _ExtentX        =   22040
      _ExtentY        =   10821
      _Version        =   393217
      Enabled         =   -1  'True
      TextRTF         =   $"Form1.frx":0000
   End
   Begin VB.ListBox List1 
      Height          =   2595
      Left            =   14520
      TabIndex        =   1
      Top             =   840
      Width           =   5055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Read first 5 lines"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   720
      TabIndex        =   0
      Top             =   7440
      Width           =   1335
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "This is Rich Text Box  "
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   600
      TabIndex        =   4
      Top             =   240
      Width           =   4140
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "This is list box "
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   14400
      TabIndex        =   3
      Top             =   360
      Width           =   3060
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim str As String
Dim i As Integer
Dim fp  As String
rtb1.Text = ""
List1.Clear

fp = App.Path + "\textfile.txt"
 Open fp For Input As #1
 For i = 1 To 5 ' reads only first 5 lines
  Line Input #1, str  ' it automatically reads data line by line it rembembers it pervious readed/accessed line no( as it Sequential )
  rtb1.Text = rtb1.Text + str + vbCrLf
  List1.AddItem str


Next i
Close #1

End Sub

Private Sub Command4_Click()
Dim str As String
Dim count As Integer ' just for record how many line read
Dim fp  As String
rtb1.Text = ""
List1.Clear

fp = App.Path + "\textfile.txt"
 Open fp For Input As #1
 count = 0
While Not (EOF(1))
  Line Input #1, str  ' it automatically reads data line by line it rembembers it pervious readed/accessed line no( as it Sequential )
  rtb1.Text = rtb1.Text + str + vbCrLf
  List1.AddItem str
  count = count + 1

Wend
'MsgBox " total records form file is : " & count
Close #1
End Sub
