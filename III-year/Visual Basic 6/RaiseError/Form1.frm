VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8145
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14010
   LinkTopic       =   "Form1"
   ScaleHeight     =   8145
   ScaleWidth      =   14010
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   6360
      TabIndex        =   2
      Top             =   720
      Width           =   2775
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6480
      TabIndex        =   1
      Top             =   1920
      Width           =   1215
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Enter Any +ve no Less Than 10"
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
      Left            =   1080
      TabIndex        =   0
      Top             =   840
      Width           =   4950
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error GoTo errlbl

Dim num
num = CInt(Text1.Text)
 '0 - 512 are reserved for system error
 '513 - 65535 are available for user-defined errors

If (num = 0) Then
Err.Raise 512, , "Entered Number can't be 0"

ElseIf num < 0 Then
Err.Raise 513, , "Entered Number can't be less than 0"

ElseIf num > 10 Then
Err.Raise 514, , "Entered Number can't be greater than 10"

Else
MsgBox "Give  no is " & num
End If

Exit Sub

errlbl:
Text1.SetFocus
MsgBox "Error Number : " & Err.Number & vbCrLf & "Error Description : " & Err.Description & vbCrLf & "Error Source : " & Err.Source, vbCritical, "Error Details"
End Sub



