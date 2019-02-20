VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7350
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12360
   LinkTopic       =   "Form1"
   ScaleHeight     =   7350
   ScaleWidth      =   12360
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command5 
      Caption         =   "OnError Goto Elbl...OnError Goto 0"
      Height          =   1095
      Left            =   12240
      TabIndex        =   4
      Top             =   1320
      Width           =   2895
   End
   Begin VB.CommandButton Command4 
      Caption         =   "OnError Goto Elb...Goto up"
      Height          =   1095
      Left            =   9240
      TabIndex        =   3
      Top             =   1320
      Width           =   2895
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Without Error Handler"
      Height          =   1095
      Left            =   240
      TabIndex        =   2
      Top             =   1320
      Width           =   2895
   End
   Begin VB.CommandButton Command2 
      Caption         =   "OnErro Goto Elbl...Resume"
      Height          =   1095
      Left            =   3240
      TabIndex        =   1
      Top             =   1320
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OnError Goto Elbl"
      Height          =   1095
      Left            =   6240
      TabIndex        =   0
      Top             =   1320
      Width           =   2895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim n As Integer
n = 10

On Error GoTo elabel
n = n / 0
elabel:
MsgBox "can't div by zero  "



End Sub

Private Sub Command2_Click()
Dim divsor As Integer
Dim num As Integer
divsor = 0
On Error GoTo elab
divsor = Val(InputBox("ENTER DIVISOR  "))
num = 10 / divisor
MsgBox "q is    " & q
Exit Sub
elab:
MsgBox Err.Description
Resume

End Sub

Private Sub Command3_Click()
Dim arr(5) As Integer
MsgBox ("hello")
divisor = Val(InputBox("enter divisor  "))
q = 10 / divisor
i = Val(InputBox("enter index    "))
arr(i) = q
MsgBox "  Divisor= " & divisor & vbCrLf & "Index (i)= " & i & vbCrLf & "Item at index i [arr(i)]=" & arr(i)
End Sub

Private Sub Command4_Click()
Dim n As Integer
On Error GoTo elab
lbljump:
n = Val(InputBox("enter an integer(error handler is active)"))
n = 20 / n
Exit Sub
elab:
MsgBox "error occured re-enter number"
GoTo lbljump


End Sub

Private Sub Command5_Click()
On Error GoTo elab
On Error GoTo 0 'disables error handler
n = Val(InputBox("enter an integer(error handler is de-activated) "))
n = 20 / n
elab:
MsgBox Err.Description

End Sub
