VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000080&
   Caption         =   "Form1"
   ClientHeight    =   9060
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14130
   LinkTopic       =   "Form1"
   ScaleHeight     =   9060
   ScaleWidth      =   14130
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command7 
      Caption         =   "Open Cmd"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   6240
      TabIndex        =   12
      Top             =   5520
      Width           =   2535
   End
   Begin VB.CommandButton Command8 
      Caption         =   "Open Explorer"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3600
      TabIndex        =   11
      Top             =   5520
      Width           =   2535
   End
   Begin VB.CommandButton Command12 
      Caption         =   "Adjust Speaker Volume"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   8880
      TabIndex        =   10
      Top             =   5520
      Width           =   2535
   End
   Begin VB.CommandButton Command10 
      Caption         =   "Open Notepad"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   11520
      TabIndex        =   9
      Top             =   5520
      Width           =   2535
   End
   Begin VB.CommandButton Command9 
      Caption         =   "Open Control Pannel"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   960
      TabIndex        =   7
      Top             =   5520
      Width           =   2535
   End
   Begin VB.CommandButton Command5 
      Caption         =   "DELETE ONLY .html FILES IN FOLDER(NewFolderfrmVb4)"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   15600
      TabIndex        =   5
      Top             =   2280
      Width           =   4335
   End
   Begin VB.CommandButton Command4 
      Caption         =   "REMOVE FOLDER(NewFolderfrmVb1)"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   4200
      TabIndex        =   3
      Top             =   2520
      Width           =   4095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "RENAMEFOLDER(NewFolderfrmVb1 to newnewf1)"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   8400
      TabIndex        =   2
      Top             =   2520
      Width           =   2895
   End
   Begin VB.CommandButton Command2 
      Caption         =   "DELETE ALL FILES IN FOLDER(NewFolderfrmVb3)"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   11400
      TabIndex        =   1
      Top             =   2520
      Width           =   4095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ADD FOLDER(NewFolderfrmvb)"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   0
      TabIndex        =   0
      Top             =   2520
      Width           =   4095
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Shell Function : "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   570
      Left            =   120
      TabIndex        =   8
      Top             =   4680
      Width           =   3030
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   $"Form1.frx":0000
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000C&
      Height          =   1530
      Left            =   120
      TabIndex        =   6
      Top             =   720
      Width           =   19605
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Drive is set to 'H' at Loading time"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   570
      Left            =   240
      TabIndex        =   4
      Top             =   240
      Width           =   6435
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer

Private Sub Command1_Click()
On Error GoTo err:
i = i + 1
MkDir "NewFolderfrmvb" & i
If i = 1 Then  ' only for the first time
Command4.Enabled = True
End If
If i = 2 Then ' for the 2nd folder
Command3.Enabled = True
End If
If i = 3 Then ' for the 3rd folder
Command2.Enabled = True
End If
If i = 4 Then ' for the 4rd folder
Command5.Enabled = True
End If

Exit Sub
err:
MsgBox err.Description
End Sub

Private Sub Command10_Click()
Dim taskid
taskid = Shell("C:\Windows\System32\notepad.exe", vbNormalFocus)
MsgBox "Task id is : " & taskid & vbCrLf & "[ HINT : U can check this task/process id in Task manager also. ]"

End Sub

Private Sub Command11_Click(Index As Integer)
Dim taskid
taskid = Shell("C:\Program Files (x86)\Google\Chrome\chrome.exe")
MsgBox "Task id is : " & taskid & vbCrLf & "[ HINT : U can check this task/process id in Task manager also. ]"

End Sub

Private Sub Command12_Click()
Dim taskid
taskid = Shell("C:\Windows\System32\SndVol.exe", vbNormalFocus)
MsgBox "Task id is : " & taskid & vbCrLf & "[ HINT : U can check this task/process id in Task manager also. ]"

End Sub


Private Sub Command2_Click()
On Error GoTo err1:
ChDir "H:NewFolderfrmVb3" ' set current directory to newfolderfrmvb3
Kill "*.*"

Exit Sub
err1:
'MsgBox err.Description
End Sub

Private Sub Command3_Click()
On Error GoTo err:
'Name "NewFolderfrmVb2" As "newnewf2"
         'or
Name "H:NewFolderfrmVb2" As "H:newnewf2"
Command3.Enabled = False
Exit Sub
err:
MsgBox err.Description
End Sub

Private Sub Command4_Click()
On Error GoTo err:
'NOTE:the rmdir can only delete folder if the folder is empty else it will generate error
  ' Use KILL statement to delete all files before attempting to remove a directory
  
'RmDir "NewFolderfrmVb1"  ' the path is still on root h: so it will remove the folder
' or
RmDir "H:NewFolderfrmVb1"
Command4.Enabled = False
Exit Sub
err:
MsgBox err.Description
End Sub

Private Sub Command5_Click()
On Error GoTo err2:
ChDir "H:NewFolderfrmVb4" ' set current directory to newfolderfrmvb3
Kill "*.html"

Exit Sub
err2:
'MsgBox err.Description


End Sub


Private Sub Command7_Click()
Dim taskid
taskid = Shell("C:\Windows\System32\cmd.exe", vbNormalFocus)
MsgBox "Task id is : " & taskid & vbCrLf & "[ HINT : U can check this task/process id in Task manager also. ]"

End Sub

Private Sub Command8_Click()
Dim taskid
taskid = Shell("C:\Windows\explorer.exe", vbNormalFocus)
MsgBox "Task id is : " & taskid & vbCrLf & "[ HINT : U can check this task/process id in Task manager also. ]"

End Sub

Private Sub Command9_Click()
Dim taskid
taskid = Shell("C:\Windows\System32\control.exe", vbNormalFocus)
MsgBox "Task id is : " & taskid & vbCrLf & "[ HINT : U can check this task/process id in Task manager also. ]"


End Sub

Private Sub Form_Load()
ChDrive "H"
End Sub

