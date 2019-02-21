VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8580
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13845
   LinkTopic       =   "Form1"
   ScaleHeight     =   8580
   ScaleWidth      =   13845
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "check"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   6120
      TabIndex        =   8
      Top             =   3960
      Width           =   1935
   End
   Begin VB.CommandButton Command5 
      Caption         =   "check"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   6120
      TabIndex        =   4
      Top             =   1680
      Width           =   1935
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Even/Odd"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1200
      TabIndex        =   3
      Top             =   3960
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Even/Odd"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1200
      TabIndex        =   2
      Top             =   1680
      Width           =   1935
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Call by value"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   5880
      TabIndex        =   7
      Top             =   3120
      Width           =   1875
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Call by reference "
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   5880
      TabIndex        =   6
      Top             =   840
      Width           =   2550
   End
   Begin VB.Label lblstatus 
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   4200
      TabIndex        =   5
      Top             =   360
      Width           =   90
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "By using procedure "
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   960
      TabIndex        =   1
      Top             =   3120
      Width           =   2910
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "By using functions "
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   960
      TabIndex        =   0
      Top             =   840
      Width           =   2790
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim value As Integer
Public Sub even_odd()
Dim num As Integer
Dim temp As String
temp = (InputBox("Enter number", "EVEN/ODD"))
If temp = "" Then
MsgBox "No number entered", vbCritical, Error
Else
num = Val(temp)
    If num Mod 2 = 0 Then
    lblstatus.Caption = "NO is even"
    Else
    lblstatus.Caption = "NO is odd"
    End If
End If
End Sub

Private Sub Command1_Click()
Dim num As Integer
Dim temp As String
temp = (InputBox("Enter number", "EVEN/ODD"))
If temp = "" Then
MsgBox "No number entered", vbCritical, Error
Else
even_oddfun = num
End Sub
Public Function even_oddfun(ByVal n) As Integer
n = Val(temp)
    If n Mod 2 = 0 Then
    lblstatus.Caption = "NO is even"
    Else
    lblstatus.Caption = "NO is odd"
    End If
End If
End Function


Private Sub Command4_Click()
Call even_odd
End Sub
Private Sub Command5_Click()
Dim before  As Integer
value = 10
before = value
changevalbyref value
lblstatus.Caption = "Value before call is  " & before & vbCrLf & "Value after call is " & value
End Sub

Public Sub changevalbyref(ByRef v As Integer)
v = 20
End Sub
 
Private Sub Command2_Click()
Dim before  As Integer
value = 10
before = value
changevalbyvalue (value)
lblstatus.Caption = "Value before call is  " & before & vbCrLf & "Value after call is " & value
End Sub
Public Sub changevalbyvalue(ByVal v As Integer)
 v = 20
 End Sub
