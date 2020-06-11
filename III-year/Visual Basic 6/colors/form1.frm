VERSION 5.00
Begin VB.Form form1 
   BackColor       =   &H00000000&
   Caption         =   "ALL COLORS"
   ClientHeight    =   4035
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9705
   LinkTopic       =   "Form1"
   ScaleHeight     =   4035
   ScaleWidth      =   9705
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Interval        =   50
      Left            =   1200
      Top             =   480
   End
End
Attribute VB_Name = "form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim flag As Integer

Dim r As Integer
Dim g As Integer
Dim b As Integer

Private Sub Form_Load()
r = 0
g = 0
b = 0
flag = 0
End Sub

Private Sub Timer1_Timer()

If r <= 255 And flag = 0 Then

form1.BackColor = RGB(r, g, b)
r = r + 1
g = g + 1
b = b + 1
Else
flag = 1
End If

 If r >= 1 And flag <> 0 Then
 form1.BackColor = RGB(r, g, b)
  r = r - 1
  g = g - 1
  b = b - 1
  Else
  flag = 0

End If

End Sub
