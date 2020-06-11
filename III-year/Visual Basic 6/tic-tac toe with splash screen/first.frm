VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00008000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Tic-Tac-Toe"
   ClientHeight    =   9330
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   9045
   Icon            =   "first.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   9330
   ScaleWidth      =   9045
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame frmpname 
      BackColor       =   &H00008000&
      BorderStyle     =   0  'None
      ForeColor       =   &H00004000&
      Height          =   2655
      Left            =   1200
      TabIndex        =   11
      Top             =   120
      Width           =   7170
      Begin VB.TextBox txtbpname1 
         BackColor       =   &H80000003&
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   525
         Left            =   3840
         MaxLength       =   15
         TabIndex        =   14
         Top             =   240
         Width           =   3255
      End
      Begin VB.TextBox txtbpname2 
         BackColor       =   &H80000003&
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   525
         Left            =   3840
         MaxLength       =   15
         TabIndex        =   15
         Top             =   1200
         Width           =   3255
      End
      Begin VB.Label lblstartfpname 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Start"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   20.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   5640
         TabIndex        =   17
         Top             =   2040
         Width           =   840
      End
      Begin VB.Label lblskipfpname 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Skip"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   20.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   4080
         TabIndex        =   16
         Top             =   2040
         Width           =   720
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Enter 1st player's name :"
         BeginProperty Font 
            Name            =   "Gabriola"
            Size            =   21.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   810
         Left            =   0
         TabIndex        =   13
         Top             =   1200
         Width           =   3570
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Enter 1st player's name :"
         BeginProperty Font 
            Name            =   "Gabriola"
            Size            =   21.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   810
         Left            =   120
         TabIndex        =   12
         Top             =   120
         Width           =   3570
      End
   End
   Begin VB.Frame frmplay 
      BackColor       =   &H00004000&
      BorderStyle     =   0  'None
      Height          =   3503
      Left            =   2046
      TabIndex        =   0
      Top             =   2914
      Width           =   4952
      Begin VB.CommandButton bt11 
         BackColor       =   &H00000040&
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   0
         MaskColor       =   &H0000FF00&
         MouseIcon       =   "first.frx":6932
         MousePointer    =   99  'Custom
         Style           =   1  'Graphical
         TabIndex        =   10
         Top             =   0
         Width           =   1575
      End
      Begin VB.CommandButton bt12 
         BackColor       =   &H00000040&
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   1695
         MouseIcon       =   "first.frx":6C3C
         MousePointer    =   99  'Custom
         Style           =   1  'Graphical
         TabIndex        =   9
         Top             =   0
         Width           =   1575
      End
      Begin VB.CommandButton bt13 
         BackColor       =   &H00000040&
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   3360
         MouseIcon       =   "first.frx":6F46
         MousePointer    =   99  'Custom
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   0
         Width           =   1575
      End
      Begin VB.CommandButton bt23 
         BackColor       =   &H00000040&
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   3360
         MaskColor       =   &H0000FF00&
         MouseIcon       =   "first.frx":7250
         MousePointer    =   99  'Custom
         OLEDropMode     =   1  'Manual
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   1200
         Width           =   1575
      End
      Begin VB.CommandButton bt22 
         BackColor       =   &H00000040&
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   1680
         MaskColor       =   &H0000FF00&
         MouseIcon       =   "first.frx":755A
         MousePointer    =   99  'Custom
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   1200
         Width           =   1575
      End
      Begin VB.CommandButton bt21 
         BackColor       =   &H00000040&
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   0
         MaskColor       =   &H0000FF00&
         MouseIcon       =   "first.frx":7864
         MousePointer    =   99  'Custom
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   1200
         Width           =   1575
      End
      Begin VB.CommandButton bt33 
         BackColor       =   &H00000040&
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   3360
         MaskColor       =   &H0000FF00&
         MouseIcon       =   "first.frx":7B6E
         MousePointer    =   99  'Custom
         Style           =   1  'Graphical
         TabIndex        =   4
         Top             =   2400
         Width           =   1575
      End
      Begin VB.CommandButton bt32 
         BackColor       =   &H00000040&
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   1680
         MaskColor       =   &H0000FF00&
         MouseIcon       =   "first.frx":7E78
         MousePointer    =   99  'Custom
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   2400
         Width           =   1575
      End
      Begin VB.CommandButton bt31 
         BackColor       =   &H00000040&
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   0
         MaskColor       =   &H0000FF00&
         MouseIcon       =   "first.frx":8182
         MousePointer    =   99  'Custom
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   2400
         Width           =   1575
      End
   End
   Begin VB.Label lblrestartfpaly 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Restart"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   3120
      TabIndex        =   20
      Top             =   6360
      Width           =   1200
   End
   Begin VB.Label lblresetfplay 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Reset"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   4800
      TabIndex        =   19
      Top             =   6360
      Width           =   870
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Developed by wasit"
      BeginProperty Font 
         Name            =   "True Lies"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00004000&
      Height          =   495
      Left            =   2955
      TabIndex        =   18
      Top             =   9000
      Width           =   3135
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Tic-Tac-Toe"
      BeginProperty Font 
         Name            =   "True Lies"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00004000&
      Height          =   1155
      Left            =   1650
      TabIndex        =   1
      Top             =   480
      Width           =   5745
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim flag As Integer

Private Sub bt11_Click()
Dim flg As Integer
flg = 0
If (flag = 0) Then
bt11.Caption = "0"
bt11.Enabled = False
flag = 1
Else
bt11.Caption = "X"
bt11.Enabled = False
flag = 0
End If
If (bt12.Caption = bt11.Caption And bt13.Caption = bt11.Caption Or bt21.Caption = bt11.Caption And bt31.Caption = bt11.Caption Or bt22.Caption = bt11.Caption And bt33.Caption = bt11.Caption) Then
        If (flag = 1) Then
          If (txtbpname1.Text <> "") Then
             MsgBox txtbpname1.Text + "'s wins the game...(0)"
            Else
            MsgBox "Anonymous player1 win the game...(0)"
            End If
        Else
          If (txtbpname2.Text <> "") Then
            MsgBox txtbpname2.Text + "'s wins the game...(X)"
           Else
            MsgBox "Anonymous player2 win the game...(X)"
          End If
        End If
    frmplay.Enabled = False
    flg = 1
ElseIf (flg <> 1 And bt11.Caption <> "" And bt12.Caption <> "" And bt13.Caption <> "" And bt21.Caption <> "" And bt22.Caption <> "" And bt23.Caption <> "" And bt31.Caption <> "" And bt32.Caption <> "" And bt33.Caption <> "") Then
MsgBox "game draw ..do you want to restart the game....."
End If
End Sub

Private Sub bt12_Click()
Dim flg As Integer
flg = 0
If (flag = 0) Then
bt12.Caption = "0"
bt12.Enabled = False
flag = 1
Else
bt12.Caption = "X"
bt12.Enabled = False
flag = 0
End If

If (bt11.Caption = bt12.Caption And bt13.Caption = bt12.Caption Or bt22.Caption = bt12.Caption And bt32.Caption = bt12.Caption) Then
        If (flag = 1) Then
          If (txtbpname1.Text <> "") Then
             MsgBox txtbpname1.Text + "'s wins the game...(0)"
            Else
            MsgBox "Anonymous player1 win the game...(0)"
            End If
        Else
          If (txtbpname2.Text <> "") Then
            MsgBox txtbpname2.Text + "'s wins the game...(X)"
           Else
            MsgBox "Anonymous player2 win the game...(X)"
          End If
        End If

frmplay.Enabled = False
flg = 1
ElseIf (flg <> 1 And bt11.Caption <> "" And bt12.Caption <> "" And bt13.Caption <> "" And bt21.Caption <> "" And bt22.Caption <> "" And bt23.Caption <> "" And bt31.Caption <> "" And bt32.Caption <> "" And bt33.Caption <> "") Then
MsgBox "game draw ..do you want to restart the game....."
frmplay.Enabled = False

End If
End Sub

Private Sub bt13_Click()
Dim flg As Integer
flg = 0
If (flag = 0) Then
bt13.Caption = "0"
bt13.Enabled = False
flag = 1
Else
bt13.Caption = "X"
bt13.Enabled = False
flag = 0
End If

If (bt11.Caption = bt13.Caption And bt12.Caption = bt13.Caption Or bt33.Caption = bt13.Caption And bt23.Caption = bt13.Caption Or bt31.Caption = bt13.Caption And bt22.Caption = bt13.Caption) Then
        If (flag = 1) Then
          If (txtbpname1.Text <> "") Then
             MsgBox txtbpname1.Text + "'s wins the game...(0)"
            Else
            MsgBox "Anonymous player1 win the game...(0)"
            End If
        Else
          If (txtbpname2.Text <> "") Then
            MsgBox txtbpname2.Text + "'s wins the game...(X)"
           Else
            MsgBox "Anonymous player2 win the game...(X)"
          End If
        End If

frmplay.Enabled = False
flg = 1
ElseIf (flg <> 1 And bt11.Caption <> "" And bt12.Caption <> "" And bt13.Caption <> "" And bt21.Caption <> "" And bt22.Caption <> "" And bt23.Caption <> "" And bt31.Caption <> "" And bt32.Caption <> "" And bt33.Caption <> "") Then
MsgBox "game draw ..do you want to restart the game....."

End If
End Sub

Private Sub bt21_Click()
Dim flg As Integer
flg = 0
If (flag = 0) Then
bt21.Caption = "0"
bt21.Enabled = False
flag = 1
Else
bt21.Caption = "X"
bt21.Enabled = False
flag = 0
End If

If (bt11.Caption = bt21.Caption And bt31.Caption = bt21.Caption Or bt22.Caption = bt21.Caption And bt23.Caption = bt21.Caption) Then
        If (flag = 1) Then
          If (txtbpname1.Text <> "") Then
             MsgBox txtbpname1.Text + "'s wins the game...(0)"
            Else
            MsgBox "Anonymous player1 win the game...(0)"
            End If
        Else
          If (txtbpname2.Text <> "") Then
            MsgBox txtbpname2.Text + "'s wins the game...(X)"
           Else
            MsgBox "Anonymous player2 win the game...(X)"
          End If
        End If

frmplay.Enabled = False
flg = 1
ElseIf (flg <> 1 And bt11.Caption <> "" And bt12.Caption <> "" And bt13.Caption <> "" And bt21.Caption <> "" And bt22.Caption <> "" And bt23.Caption <> "" And bt31.Caption <> "" And bt32.Caption <> "" And bt33.Caption <> "") Then
MsgBox "game draw ..do you want to restart the game....."
End If
End Sub

Private Sub bt22_Click()
Dim flg As Integer
flg = 0
If (flag = 0) Then
bt22.Caption = "0"
bt22.Enabled = False
flag = 1
Else
bt22.Caption = "X"
bt22.Enabled = False
flag = 0
End If

If (bt21.Caption = bt22.Caption And bt23.Caption = bt22.Caption Or bt12.Caption = bt22.Caption And bt32.Caption = bt22.Caption Or bt11.Caption = bt22.Caption And bt33.Caption = bt22.Caption) Then
        If (flag = 1) Then
          If (txtbpname1.Text <> "") Then
             MsgBox txtbpname1.Text + "'s wins the game...(0)"
            Else
            MsgBox "Anonymous player1 win the game...(0)"
            End If
        Else
          If (txtbpname2.Text <> "") Then
            MsgBox txtbpname2.Text + "'s wins the game...(X)"
           Else
            MsgBox "Anonymous player2 win the game...(X)"
          End If
        End If
frmplay.Enabled = False
flg = 1
ElseIf (flg <> 1 And bt11.Caption <> "" And bt12.Caption <> "" And bt13.Caption <> "" And bt21.Caption <> "" And bt22.Caption <> "" And bt23.Caption <> "" And bt31.Caption <> "" And bt32.Caption <> "" And bt33.Caption <> "") Then
MsgBox "game draw ..do you want to restart the game....."
End If
End Sub

Private Sub bt23_Click()
Dim flg As Integer
flg = 0
If (flag = 0) Then
bt23.Caption = "0"
bt23.Enabled = False
flag = 1
Else
bt23.Caption = "X"
bt23.Enabled = False
flag = 0
End If

If (bt21.Caption = bt23.Caption And bt22.Caption = bt23.Caption Or bt13.Caption = bt23.Caption And bt33.Caption = bt23.Caption) Then
        If (flag = 1) Then
          If (txtbpname1.Text <> "") Then
             MsgBox txtbpname1.Text + "'s wins the game...(0)"
            Else
            MsgBox "Anonymous player1 win the game...(0)"
            End If
        Else
          If (txtbpname2.Text <> "") Then
            MsgBox txtbpname2.Text + "'s wins the game...(X)"
           Else
            MsgBox "Anonymous player2 win the game...(X)"
          End If
        End If

frmplay.Enabled = False
flg = 1
ElseIf (flg <> 1 And bt11.Caption <> "" And bt12.Caption <> "" And bt13.Caption <> "" And bt21.Caption <> "" And bt22.Caption <> "" And bt23.Caption <> "" And bt31.Caption <> "" And bt32.Caption <> "" And bt33.Caption <> "") Then
MsgBox "game draw ..do you want to restart the game....."
End If
End Sub

Private Sub bt31_Click()
Dim flg As Integer
flg = 0
If (flag = 0) Then
bt31.Caption = "0"
bt31.Enabled = False
flag = 1
Else
bt31.Caption = "X"
bt31.Enabled = False
flag = 0
End If

If (bt11.Caption = bt31.Caption And bt21.Caption = bt31.Caption Or bt33.Caption = bt31.Caption And bt32.Caption = bt31.Caption Or bt13.Caption = bt31.Caption And bt22.Caption = bt31.Caption) Then
        If (flag = 1) Then
          If (txtbpname1.Text <> "") Then
             MsgBox txtbpname1.Text + "'s wins the game...(0)"
            Else
            MsgBox "Anonymous player1 win the game...(0)"
            End If
        Else
          If (txtbpname2.Text <> "") Then
            MsgBox txtbpname2.Text + "'s wins the game...(X)"
           Else
            MsgBox "Anonymous player2 win the game...(X)"
          End If
        End If

frmplay.Enabled = False
flg = 1
ElseIf (flg <> 1 And bt11.Caption <> "" And bt12.Caption <> "" And bt13.Caption <> "" And bt21.Caption <> "" And bt22.Caption <> "" And bt23.Caption <> "" And bt31.Caption <> "" And bt32.Caption <> "" And bt33.Caption <> "") Then
MsgBox "game draw ..do you want to restart the game....."
End If
End Sub

Private Sub bt32_Click()
Dim flg As Integer
flg = 0
If (flag = 0) Then
bt32.Caption = "0"
bt32.Enabled = False
flag = 1
Else
bt32.Caption = "X"
bt32.Enabled = False
flag = 0
End If

If (bt31.Caption = bt32.Caption And bt33.Caption = bt32.Caption Or bt12.Caption = bt32.Caption And bt22.Caption = bt32.Caption) Then
        If (flag = 1) Then
          If (txtbpname1.Text <> "") Then
             MsgBox txtbpname1.Text + "'s wins the game...(0)"
            Else
            MsgBox "Anonymous player1 win the game...(0)"
            End If
        Else
          If (txtbpname2.Text <> "") Then
            MsgBox txtbpname2.Text + "'s wins the game...(X)"
           Else
            MsgBox "Anonymous player2 win the game...(X)"
          End If
        End If

frmplay.Enabled = False
flg = 1
ElseIf (flg <> 1 And bt11.Caption <> "" And bt12.Caption <> "" And bt13.Caption <> "" And bt21.Caption <> "" And bt22.Caption <> "" And bt23.Caption <> "" And bt31.Caption <> "" And bt32.Caption <> "" And bt33.Caption <> "") Then
MsgBox "game draw ..do you want to restart the game....."
End If
End Sub

Private Sub bt33_Click()
Dim flg As Integer
flg = 0
If (flag = 0) Then
bt33.Caption = "0"
bt33.Enabled = False
flag = 1
Else
bt33.Caption = "X"
bt33.Enabled = False
flag = 0
End If
If (bt31.Caption = bt33.Caption And bt32.Caption = bt33.Caption Or bt13.Caption = bt33.Caption And bt23.Caption = bt33.Caption Or bt11.Caption = bt33.Caption And bt22.Caption = bt33.Caption) Then
        If (flag = 1) Then
          If (txtbpname1.Text <> "") Then
             MsgBox txtbpname1.Text + "'s wins the game...(0)"
            Else
            MsgBox "Anonymous player1 win the game...(0)"
            End If
        Else
          If (txtbpname2.Text <> "") Then
            MsgBox txtbpname2.Text + "'s wins the game...(X)"
           Else
            MsgBox "Anonymous player2 win the game...(X)"
          End If
        End If

frmplay.Enabled = False
flg = 1
ElseIf (flg <> 1 And bt11.Caption <> "" And bt12.Caption <> "" And bt13.Caption <> "" And bt21.Caption <> "" And bt22.Caption <> "" And bt23.Caption <> "" And bt31.Caption <> "" And bt32.Caption <> "" And bt33.Caption <> "") Then
MsgBox "game draw ..do you want to restart the game....."
End If
End Sub


Private Sub Form_Load()
frmpname.Left = 937
frmpname.Top = 2655
frmplay.Visible = False
frmpname.Visible = True
lblresetfplay.Visible = False
lblrestartfpaly.Visible = False

End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
lblskipfpname.FontUnderline = False
lblskipfpname.ForeColor = vbBlack
lblstartfpname.FontUnderline = False
lblstartfpname.ForeColor = vbBlack

lblrestartfpaly.FontUnderline = False
lblrestartfpaly.ForeColor = vbBlack
lblresetfplay.FontUnderline = False
lblresetfplay.ForeColor = vbBlack
End Sub

Private Sub frmplay_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
lblrestartfpaly.FontUnderline = False
lblrestartfpaly.ForeColor = vbBlack

lblresetfplay.FontUnderline = False
lblresetfplay.ForeColor = vbBlack
End Sub

Private Sub frmpname_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
lblskipfpname.FontUnderline = False
lblskipfpname.ForeColor = vbBlack

lblstartfpname.FontUnderline = False
lblstartfpname.ForeColor = vbBlack
End Sub


Private Sub lblresetfplay_Click()
bt11.Caption = ""
bt12.Caption = ""
bt13.Caption = ""
bt21.Caption = ""
bt22.Caption = ""
bt23.Caption = ""
bt31.Caption = ""
bt32.Caption = ""
bt33.Caption = ""
bt11.Enabled = True
bt12.Enabled = True
bt13.Enabled = True
bt21.Enabled = True
bt22.Enabled = True
bt23.Enabled = True
bt31.Enabled = True
bt32.Enabled = True
bt33.Enabled = True
frmplay.Enabled = True

flag = 0
End Sub

Private Sub lblresetfplay_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
lblresetfplay.ForeColor = vbWhite
lblresetfplay.FontUnderline = True
End Sub

Private Sub lblrestartfpaly_Click()
frmplay.Visible = False
frmpname.Visible = True
txtbpname1.Text = ""
txtbpname2.Text = ""
txtbpname1.SetFocus


bt11.Caption = ""
bt12.Caption = ""
bt13.Caption = ""
bt21.Caption = ""
bt22.Caption = ""
bt23.Caption = ""
bt31.Caption = ""
bt32.Caption = ""
bt33.Caption = ""
frmplay.Enabled = True

bt11.Enabled = True
bt12.Enabled = True
bt13.Enabled = True
bt21.Enabled = True
bt22.Enabled = True
bt23.Enabled = True
bt31.Enabled = True
bt32.Enabled = True
bt33.Enabled = True
flag = 0


lblresetfplay.Visible = False
lblrestartfpaly.Visible = False

End Sub

Private Sub lblrestartfpaly_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
lblrestartfpaly.FontUnderline = True
lblrestartfpaly.ForeColor = vbWhite
End Sub

Private Sub lblskipfpname_Click()
frmpname.Visible = False
frmplay.Visible = True

lblresetfplay.Visible = True
lblrestartfpaly.Visible = True
End Sub

Private Sub lblskipfpname_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
lblskipfpname.FontUnderline = True
lblskipfpname.ForeColor = vbWhite
End Sub

Private Sub lblstartfpname_Click()
frmpname.Visible = False
frmplay.Visible = True

lblresetfplay.Visible = True
lblrestartfpaly.Visible = True
End Sub

Private Sub lblstartfpname_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
lblstartfpname.FontUnderline = True
lblstartfpname.ForeColor = vbWhite
End Sub
