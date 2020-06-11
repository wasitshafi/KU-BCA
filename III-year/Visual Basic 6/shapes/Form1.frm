VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "Form1"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer3 
      Left            =   16560
      Top             =   1920
   End
   Begin VB.Timer Timer2 
      Interval        =   10
      Left            =   15120
      Top             =   1800
   End
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   14040
      Top             =   1800
   End
   Begin VB.Label Label1 
      BackColor       =   &H0080C0FF&
      Caption         =   "Label1"
      ForeColor       =   &H8000000D&
      Height          =   2295
      Left            =   7800
      TabIndex        =   0
      Top             =   8280
      Width           =   5055
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00FF0000&
      FillStyle       =   0  'Solid
      Height          =   2895
      Left            =   7320
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   3495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim X

 Dim Y
 
Private Sub Form_Load()
Xx = 10
Y = 10

End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label1.Left = X
End Sub

Private Sub Timer1_Timer()
Shape1.Left = Shape1.Left + Xx
If Shape1.Left + Shape1.Width >= Form1.Width Then
Xx = -(100 + (Int(Rnd * 1000) Mod 501))
ElseIf Shape1.Left <= 0 Then
Xx = 100 + (Int(Rnd * 1000) Mod 10)
End If












End Sub

Private Sub Timer2_Timer()

Shape1.Top = Shape1.Top + Y
If Shape1.Top + Shape1.Height >= Form1.Height Then
Y = -(100 + (Int(Rnd * 1000) Mod 501))
ElseIf Shape1.Top <= 0 Then
Y = 100 + (Int(Rnd * 1000) Mod 10)
End If

End Sub

Private Sub Timer3_Timer()
If (Shape1.Top + Shape1.Height <= Label1.Top) And ((Shape1.Left <= Label1.Left + Label1.Width)) Then
   Y = -(100 + (Int(Rnd * 1000) Mod 501))
   End If
End Sub

