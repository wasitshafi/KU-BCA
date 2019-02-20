VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H8000000C&
   Caption         =   "Form1"
   ClientHeight    =   6660
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12510
   LinkTopic       =   "Form1"
   ScaleHeight     =   6660
   ScaleWidth      =   12510
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command7 
      Caption         =   "SetFocus to Controls"
      Height          =   855
      Left            =   7320
      TabIndex        =   21
      Top             =   4680
      Width           =   2655
   End
   Begin VB.CheckBox Check5 
      Caption         =   "Check5"
      Height          =   495
      Left            =   9120
      TabIndex        =   20
      Top             =   3600
      Width           =   1215
   End
   Begin VB.CheckBox Check4 
      Caption         =   "Check4"
      Height          =   495
      Left            =   9120
      TabIndex        =   19
      Top             =   2880
      Width           =   1215
   End
   Begin VB.CheckBox Check3 
      Caption         =   "Check3"
      Height          =   495
      Left            =   9120
      TabIndex        =   18
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Check2"
      Height          =   495
      Left            =   9120
      TabIndex        =   17
      Top             =   1440
      Width           =   1215
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Check1"
      Height          =   495
      Left            =   9120
      TabIndex        =   16
      Top             =   720
      Width           =   1215
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Count controls"
      Height          =   495
      Left            =   3960
      TabIndex        =   15
      Top             =   4680
      Width           =   2655
   End
   Begin VB.TextBox Text5 
      Height          =   495
      Left            =   5160
      TabIndex        =   14
      Text            =   "Text5"
      Top             =   3600
      Width           =   1215
   End
   Begin VB.TextBox Text4 
      Height          =   495
      Left            =   5160
      TabIndex        =   13
      Text            =   "Text4"
      Top             =   2880
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   5160
      TabIndex        =   12
      Text            =   "Text3"
      Top             =   2160
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   5160
      TabIndex        =   11
      Text            =   "Text2"
      Top             =   1440
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   5160
      TabIndex        =   10
      Text            =   "Text1"
      Top             =   720
      Width           =   1215
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Command5"
      Height          =   495
      Left            =   6840
      TabIndex        =   4
      Top             =   3600
      Width           =   1815
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Command4"
      Height          =   495
      Left            =   6840
      TabIndex        =   3
      Top             =   2880
      Width           =   1815
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Command3"
      Height          =   495
      Left            =   6840
      TabIndex        =   2
      Top             =   2160
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   495
      Left            =   6840
      TabIndex        =   1
      Top             =   1440
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   495
      Left            =   6840
      TabIndex        =   0
      Top             =   720
      Width           =   1815
   End
   Begin VB.Label Label5 
      Caption         =   "This is label5"
      Height          =   495
      Left            =   3480
      TabIndex        =   9
      Top             =   3600
      Width           =   1215
   End
   Begin VB.Label Label4 
      Caption         =   "This is label4"
      Height          =   495
      Left            =   3480
      TabIndex        =   8
      Top             =   2880
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "This is label3"
      Height          =   495
      Left            =   3480
      TabIndex        =   7
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "This is label2"
      Height          =   495
      Left            =   3480
      TabIndex        =   6
      Top             =   1440
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "This is label1"
      Height          =   495
      Left            =   3480
      TabIndex        =   5
      Top             =   720
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim j As Integer
Private Sub Command6_Click()
MsgBox "There are " & Controls.Count & " Controls on the form.", vbInformation, " CONTROLS COLLECTION"


End Sub

Private Sub Command7_Click()
On Error GoTo err
If (j = Controls.Count - 1) Then
j = 0
End If

Me.Refresh
Controls(j).SetFocus
j = j + 1
Exit Sub
err:
' means that control does not suppot focus
j = j + 1

Exit Sub




End Sub

Private Sub Command8_Click()
Controls(18).SetFocus

End Sub

Private Sub Form_Activate()

Controls(0).SetFocus

End Sub

Private Sub Form_Load()
j = 0
Dim i As Integer

For i = 0 To Controls.Count - 1

If (TypeOf Controls(i) Is TextBox) Then
Controls(i).Font.Name = "comic sans ms"
Controls(i).ForeColor = vbgreeen
End If

If (TypeOf Controls(i) Is Label) Then
Controls(i).Font.Name = "Papyrus"
Controls(i).ForeColor = vbRed
Controls(i).Font.Size = "20"
End If

If (TypeOf Controls(i) Is CommandButton) Then
Controls(i).Font.Name = "Feast of Flesh BB"
Controls(i).Font.Size = "15"
End If

If (TypeOf Controls(i) Is CheckBox) Then
Controls(i).Font.Name = "28 days later"
Controls(i).Font.Size = "20"
Controls(i).Width = 5000
End If
Next i

End Sub
