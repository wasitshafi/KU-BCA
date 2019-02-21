VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   10935
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   20250
   BeginProperty Font 
      Name            =   "Comic Sans MS"
      Size            =   12
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   10935
   ScaleWidth      =   20250
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   8520
      Top             =   2280
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Hello"
      Height          =   495
      Left            =   9600
      TabIndex        =   1
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "  World"
      Height          =   495
      Left            =   10260
      TabIndex        =   0
      Top             =   120
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim flag_LR As Integer
Dim flag_UD As Integer
Dim flag3 As Integer


Private Sub Form_Load()

Timer1.Enabled = False
Label1.ForeColor = vbBlack
flag_LR = 1
flag_UD = 0
flag3 = 1
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Timer1.Enabled = True
End Sub

Private Sub Label1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Timer1.Enabled = False
End Sub

Private Sub Label2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Timer1.Enabled = False

End Sub

Private Sub Timer1_Timer()
If (Label1.ForeColor = vbBlack) Then
Label1.ForeColor = vbRed
Label1.FontSize = Label1.FontSize + 1

Label2.ForeColor = vbRed
Label2.FontSize = Label2.FontSize + 1
Else
Label1.ForeColor = vbBlack
Label1.FontSize = Label1.FontSize - 1

Label2.ForeColor = vbBlack
Label2.FontSize = Label2.FontSize - 1

Dim temp As Integer
End If

If (Label1.Left + 1000 < Form1.Width And flag_LR = 1) Then
Label1.Left = Label1.Left + 30
Label2.Left = Label2.Left - 30
Form1.BackColor = vbYellow
Else
flag_UD = 1
End If

If (Label1.Left + 1000 > 1000 And flag_UD = 1 And flag3 = 1) Then
Label1.Top = Label1.Top + 30
Label1.Left = Label1.Left - 60

Label2.Top = Label2.Top + 30
Label2.Left = Label2.Left + 60
flag_LR = 0
Form1.BackColor = vbGreen
End If

If (Label1.Top + 1500 > Form1.Height And Label1.Left < Form1.Width / 2) Then
Label1.Left = Label1.Left + 30
Label2.Left = Label2.Left - 30
flag3 = 0
Form1.BackColor = vbMagenta
End If
End Sub

















