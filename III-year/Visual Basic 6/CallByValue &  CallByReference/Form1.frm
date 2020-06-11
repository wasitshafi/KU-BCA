VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8010
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15120
   LinkTopic       =   "Form1"
   ScaleHeight     =   8010
   ScaleWidth      =   15120
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Call by Value"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   22.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1170
      Left            =   5640
      TabIndex        =   1
      Top             =   3120
      Width           =   2535
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Call by Reference"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   22.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1170
      Left            =   8640
      TabIndex        =   0
      Top             =   3120
      Width           =   2535
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim num1 As Integer
num1 = 10

MsgBox " BEFORE INCREAMENT(calling function) Num1 = " & num1, vbInformation, "CALL BY VALUE"
Call sub1(num1)
MsgBox "AFTER INCREAMENT(calling function) Num1 = " & num1, vbInformation, "CALL BY VALUE"
End Sub

Sub sub1(ByVal n1)
n1 = n1 + 10
MsgBox "AFTER INCREAMENT(In sub_procedure) N1 = " & n1, vbInformation, "CALL BY VALUE"

End Sub

Private Sub Command2_Click()
Dim num2 As Integer
num2 = 10
MsgBox " BEFORE INCREAMENT(calling function) Num2 = " & num2, vbInformation, "CALL BY VALUE"
Call sub2(num2)
MsgBox "AFTER INCREAMENT(calling function) Num2 = " & num2, vbInformation, "CALL BY VALUE"
End Sub

Sub sub2(ByRef n2)
n2 = n2 + 10
MsgBox "AFTER INCREAMENT(In sub_procedure) N2 = " & n2, vbInformation, "CALL BY VALUE"

End Sub



