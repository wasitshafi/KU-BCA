VERSION 5.00
Object = "{C1A8AF28-1257-101B-8FB0-0020AF039CA3}#1.1#0"; "MCI32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9645
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   18945
   LinkTopic       =   "Form1"
   ScaleHeight     =   9645
   ScaleWidth      =   18945
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      Height          =   6375
      Left            =   6720
      ScaleHeight     =   6315
      ScaleWidth      =   10875
      TabIndex        =   11
      Top             =   1920
      Width           =   10935
   End
   Begin MCI.MMControl MMControl1 
      Height          =   1215
      Left            =   7320
      TabIndex        =   10
      Top             =   8520
      Width           =   3540
      _ExtentX        =   6244
      _ExtentY        =   2143
      _Version        =   393216
      DeviceType      =   ""
      FileName        =   ""
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   0
      TabIndex        =   7
      Top             =   1440
      Width           =   4095
   End
   Begin VB.DirListBox Dir1 
      Height          =   1890
      Left            =   0
      TabIndex        =   6
      Top             =   1800
      Width           =   5415
   End
   Begin VB.FileListBox File1 
      Height          =   3405
      Left            =   0
      TabIndex        =   5
      Top             =   3720
      Width           =   5415
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "Form1.frx":0000
      Left            =   0
      List            =   "Form1.frx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   1080
      Width           =   4095
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   8400
      TabIndex        =   3
      Top             =   120
      Width           =   8655
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Play"
      Height          =   495
      Left            =   -120
      TabIndex        =   2
      Top             =   7680
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Pause"
      Height          =   495
      Left            =   2160
      TabIndex        =   1
      Top             =   7680
      Width           =   2295
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Exit"
      Height          =   495
      Left            =   4440
      TabIndex        =   0
      Top             =   7680
      Width           =   2295
   End
   Begin VB.Label label1 
      AutoSize        =   -1  'True
      Caption         =   "Select files of  Type"
      Height          =   195
      Left            =   360
      TabIndex        =   9
      Top             =   0
      Width           =   1395
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "File selected :"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   5760
      TabIndex        =   8
      Top             =   240
      Width           =   2700
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False




Private Sub Combo1_Change()
If ListIndex = 0 Then
File1.Pattern = ("*.bmp;*.wmf;*.jpg;*.gif")
Else
File1.Pattern = ("*.*")
End If

End Sub

Private Sub Command1_Click()
'If Combo1.ListIndex = 0 Then
'aplayer.DeviceType = "waveaudio"
'ElseIf Combo1.ListIndex = 1 Then
'aplayer.DeviceType = "sequencer"
'End If
'aplayer.Command = "close" 'if perviously closed
'
'aplayer.FileName = Text1.Text
'aplayer.Command = "open"
'aplayer.Command = "play"

MMControl1.FileName = Text1.Text

End Sub

Private Sub Command2_Click()
'If aplayer.Mode = 524 Then Exit Sub
'
'If aplayer.Mode <> 525 Then
'aplayer.Wait = True
'aplayer.Command = "Stop"
'End If
'
'aplayer.Wait = True
'aplayer.Command = "close"
'
'

If Right(File1.Path, 1) <> "\" Then
filenam = File1.Path + "\" + File1.FileName
Else
filenam = file1npath + File1.FileName
End If

Picture1.Picture = LoadPicture(filenam)


End Sub

Private Sub Command3_Click()
End

End Sub

Private Sub Dir1_Change()
File1.Path = Dir1.Path
File1.Pattern = ("*.bmp;*.wmf;*.jpg;*.gif")


'If Combo1.ListIndex = 0 Then
'File1.Pattern = ("*.wav")
'ElseIf Combo1.ListIndex = 1 Then
'
'File1.Pattern = ("*.mid")
'Else
'File1.Pattern = ("*.*")
'End If




End Sub

Private Sub Drive1_Change()
Dir1.Path = Drive1.Drive
End Sub

Private Sub File1_Click()
'If Combo1.ListIndex = 0 Then
'File1.Pattern = ("*.wav")
'ElseIf Combo1.ListIndex = 1 Then
'File1.Pattern = ("*.mid")
'Else
'File1.Pattern = ("*.*")
'End If
'
'If Right(File1.Path, 1) <> "\" Then
'FileNam = File1.Path + "\" + File1.FileName  '1 global variable created here to store file name along with full path
'
'Else
'FileNam = File1.Path + File1.FileName
'End If


If Combo1.ListIndex = 0 Then
File1.Pattern = ("*.bmp;*.wmf;*.jpg;*.gif")
Else
File1.Pattern = ("*.*")
End If

If Right(File1.Path, 1) <> "\" Then
filenam = File1.Path + "\" + File1.FileName  '1 global variable created here to store file name along with full path
Else
filenam = File1.Path + File1.FileName
End If
Text1.Text = filenam
End Sub


Private Sub Form_Load()
'Combo1.Text = "*.wav"

Combo1.AddItem "All graphic files"
Combo1.AddItem "All Files"

End Sub


