VERSION 5.00
Object = "{C1A8AF28-1257-101B-8FB0-0020AF039CA3}#1.1#0"; "MCI32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8805
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   16080
   LinkTopic       =   "Form1"
   ScaleHeight     =   8805
   ScaleWidth      =   16080
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      Caption         =   "Exit"
      Height          =   495
      Left            =   11880
      TabIndex        =   10
      Top             =   4320
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Pause"
      Height          =   495
      Left            =   9600
      TabIndex        =   9
      Top             =   4320
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Play"
      Height          =   495
      Left            =   7320
      TabIndex        =   8
      Top             =   4320
      Width           =   2295
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
      Left            =   9600
      TabIndex        =   6
      Top             =   3000
      Width           =   8655
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "Form1.frx":0000
      Left            =   960
      List            =   "Form1.frx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   1560
      Width           =   4095
   End
   Begin VB.FileListBox File1 
      Height          =   3405
      Left            =   960
      TabIndex        =   3
      Top             =   4200
      Width           =   5415
   End
   Begin VB.DirListBox Dir1 
      Height          =   1890
      Left            =   960
      TabIndex        =   2
      Top             =   2280
      Width           =   5415
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   960
      TabIndex        =   1
      Top             =   1920
      Width           =   4095
   End
   Begin MCI.MMControl aplayer 
      Height          =   1095
      Left            =   8400
      TabIndex        =   0
      Top             =   6120
      Width           =   5175
      _ExtentX        =   9128
      _ExtentY        =   1931
      _Version        =   393216
      DeviceType      =   ""
      FileName        =   ""
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
      Left            =   6720
      TabIndex        =   7
      Top             =   3120
      Width           =   2700
   End
   Begin VB.Label label1 
      AutoSize        =   -1  'True
      Caption         =   "Select files of  Type"
      Height          =   195
      Left            =   1320
      TabIndex        =   5
      Top             =   480
      Width           =   1395
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False




Private Sub Command1_Click()
If Combo1.ListIndex = 0 Then
aplayer.DeviceType = "waveaudio"
ElseIf Combo1.ListIndex = 1 Then
aplayer.DeviceType = "sequencer"
End If
aplayer.Command = "close" 'if perviously closed

aplayer.FileName = Text1.Text
aplayer.Command = "open"
aplayer.Command = "play"

End Sub

Private Sub Command2_Click()
If aplayer.Mode = 524 Then Exit Sub

If aplayer.Mode <> 525 Then
aplayer.Wait = True
aplayer.Command = "Stop"
End If

aplayer.Wait = True
aplayer.Command = "close"


End Sub

Private Sub Command3_Click()
End

End Sub

Private Sub Dir1_Change()
File1.Path = Dir1.Path
If Combo1.ListIndex = 0 Then
File1.Pattern = ("*.wav")
ElseIf Combo1.ListIndex = 1 Then

File1.Pattern = ("*.mid")
Else
File1.Pattern = ("*.*")
End If




End Sub

Private Sub Drive1_Change()
Dir1.Path = Drive1.Drive
End Sub

Private Sub File1_Click()
If Combo1.ListIndex = 0 Then
File1.Pattern = ("*.wav")
ElseIf Combo1.ListIndex = 1 Then
File1.Pattern = ("*.mid")
Else
File1.Pattern = ("*.*")
End If

If Right(File1.Path, 1) <> "\" Then
FileNam = File1.Path + "\" + File1.FileName  '1 global variable created here to store file name along with full path

Else
FileNam = File1.Path + File1.FileName
End If
Text1.Text = FileNam
End Sub


Private Sub Form_Load()
'Combo1.Text = "*.wav"

Combo1.AddItem "*.wav"
Combo1.AddItem "*.mid"
Combo1.AddItem "all files"
End Sub

