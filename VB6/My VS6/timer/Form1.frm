VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9000
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14520
   LinkTopic       =   "Form1"
   ScaleHeight     =   9000
   ScaleWidth      =   14520
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   6720
      Top             =   4080
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Hellow  "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   390
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   1065
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim flag_LR As Integer
Dim flag_UD As Integer



Private Sub Form_Load()
Timer1.Enabled = False
Label1.ForeColor = vbBlack
flag_LR = 1
flag_UD = 1
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Timer1.Enabled = True
End Sub

Private Sub Label1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Timer1.Enabled = False
End Sub

Private Sub Timer1_Timer()
If (Label1.ForeColor = vbBlack) Then
Label1.ForeColor = vbRed
Label1.FontSize = Label1.FontSize + 1
Else
Label1.ForeColor = vbBlack
Label1.FontSize = Label1.FontSize - 1
End If



If (Label1.Left + 1200 < Form1.Width And flag_LR = 1) Then
Label1.Left = Label1.Left + 30
Form1.BackColor = RGB(20, 40, 3)
End If

If (Label1.Left + 1200 >= Form1.Width And Label1.Top + 1200 < Form1.Height And flag_UD = 1) Then
Label1.Top = Label1.Top + 30
Form1.BackColor = RGB(0, 30, 10)
End If

If (Label1.Top + 1200 >= Form1.Height And Label1.Left > 100) Then
Label1.Left = Label1.Left - 30
flag_LR = 0
Form1.BackColor = RGB(0, 50, 30)
End If

If (Label1.Left < 200 And Label1.Top > 100 And flag_LR <> 1) Then
Label1.Top = Label1.Top - 30
Form1.BackColor = RGB(20, 20, 5)
End If
End Sub
