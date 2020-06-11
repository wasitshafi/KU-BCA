VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H8000000D&
   Caption         =   "Form1"
   ClientHeight    =   8250
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15255
   LinkTopic       =   "Form1"
   ScaleHeight     =   8250
   ScaleWidth      =   15255
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture1 
      Height          =   9855
      Left            =   120
      ScaleHeight     =   9795
      ScaleWidth      =   11715
      TabIndex        =   19
      Top             =   120
      Width           =   11775
   End
   Begin VB.CheckBox chknormal 
      BackColor       =   &H8000000D&
      Caption         =   "Normal"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   16800
      TabIndex        =   18
      Top             =   1920
      Value           =   1  'Checked
      Width           =   1935
   End
   Begin VB.CheckBox chksystem 
      BackColor       =   &H8000000D&
      Caption         =   "System Files"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   16800
      TabIndex        =   17
      Top             =   2280
      Width           =   1695
   End
   Begin VB.CheckBox chkarchive 
      BackColor       =   &H8000000D&
      Caption         =   "Archive Files"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   16800
      TabIndex        =   16
      Top             =   1560
      Value           =   1  'Checked
      Width           =   1695
   End
   Begin VB.CheckBox chkhidden 
      BackColor       =   &H8000000D&
      Caption         =   "Hidden Files"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   16800
      TabIndex        =   15
      Top             =   2640
      Width           =   1695
   End
   Begin VB.Timer Timer2 
      Interval        =   300
      Left            =   18720
      Top             =   360
   End
   Begin VB.CheckBox chkreadonly 
      BackColor       =   &H8000000D&
      Caption         =   "Read Only Files"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   16800
      TabIndex        =   14
      Top             =   1200
      Value           =   1  'Checked
      Width           =   1935
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Archive"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   18480
      TabIndex        =   12
      Top             =   10320
      Width           =   1695
   End
   Begin VB.CommandButton Command4 
      Caption         =   "System"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   16680
      TabIndex        =   11
      Top             =   10320
      Width           =   1695
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Hidden"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   14880
      TabIndex        =   10
      Top             =   10320
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Normal\Default"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   11280
      TabIndex        =   9
      Top             =   10320
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Read Only"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   13080
      TabIndex        =   8
      Top             =   10320
      Width           =   1695
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   300
      Left            =   14160
      Top             =   4200
   End
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      ItemData        =   "Form1.frx":0000
      Left            =   12240
      List            =   "Form1.frx":0028
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   4680
      Width           =   5175
   End
   Begin VB.FileListBox File1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4050
      Left            =   12240
      TabIndex        =   2
      Top             =   5880
      Width           =   5655
   End
   Begin VB.DirListBox Dir1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2430
      Left            =   12240
      TabIndex        =   1
      Top             =   1680
      Width           =   4455
   End
   Begin VB.DriveListBox Drive1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   12240
      TabIndex        =   0
      Top             =   480
      Width           =   3975
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "View : "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   16800
      TabIndex        =   13
      Top             =   240
      Width           =   1065
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Select Folder : "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   12360
      TabIndex        =   7
      Top             =   1200
      Width           =   2445
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "File Type : "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   12360
      TabIndex        =   6
      Top             =   4080
      Width           =   1800
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Select File :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   12360
      TabIndex        =   5
      Top             =   5280
      Width           =   1905
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Select Drive :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   12360
      TabIndex        =   4
      Top             =   0
      Width           =   2130
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False









Private Sub Command1_Click()
Dim fp
If File1.FileName = "" Then
fp = File1.Path 'means  current folder
Else
fp = File1.Path + "\" + File1.FileName  'means some file is selected
End If
SetAttr fp, vbReadOnly
End Sub

Private Sub Command2_Click()
Dim fp
If File1.FileName = "" Then
fp = File1.Path 'means  current folder
Else
fp = File1.Path + "\" + File1.FileName  'means some file is selected
End If
SetAttr fp, vbNormal

End Sub

Private Sub Command3_Click()
Dim fp
If File1.FileName = "" Then
fp = File1.Path 'means  current folder
Else
fp = File1.Path + "\" + File1.FileName  'means some file is selected
End If
SetAttr fp, vbHidden

End Sub

Private Sub Command4_Click()
Dim fp
If File1.FileName = "" Then
fp = File1.Path 'means  current folder
Else
fp = File1.Path + "\" + File1.FileName  'means some file is selected
End If
SetAttr fp, vbSystem

End Sub

Private Sub Command5_Click()
Dim fp
If File1.FileName = "" Then
fp = File1.Path 'means  current folder
Else
fp = File1.Path + "\" + File1.FileName  'means some file is selected
End If
SetAttr fp, vbArchive

End Sub

Private Sub Dir1_Change()
    File1.Path = Dir1.Path
End Sub

Private Sub Drive1_Change()
    Dir1.Path = Drive1.Drive
End Sub



Private Sub File1_Click()
On Error GoTo err

Picture1.Picture = LoadPicture(File1.Path + "\" + File1.FileName)
Exit Sub

err:
'error occured

End Sub

Private Sub Form_Load()
Combo1.Text = "All Files(*.*)"
ChDrive "G"
Dir1.Path = "G:\"

End Sub

Private Sub Timer1_Timer()

If Combo1.ListIndex = 0 Then
File1.Pattern = "*.*"
End If
If Combo1.ListIndex = 1 Then
File1.Pattern = "*.jpg"
End If
If Combo1.ListIndex = 2 Then
File1.Pattern = "*.png"
End If
If Combo1.ListIndex = 3 Then
File1.Pattern = "*.psd"
End If
If Combo1.ListIndex = 4 Then
File1.Pattern = "*.gif"
End If
If Combo1.ListIndex = 5 Then
File1.Pattern = "*.exe"
End If
If Combo1.ListIndex = 6 Then
File1.Pattern = "*.com"
End If
If Combo1.ListIndex = 7 Then
File1.Pattern = "*.mp3"
End If
If Combo1.ListIndex = 8 Then
File1.Pattern = "*.pdf"
End If
If Combo1.ListIndex = 9 Then
File1.Pattern = "*.html"
End If
If Combo1.ListIndex = 10 Then
File1.Pattern = "*.doc"
End If
If Combo1.ListIndex = 11 Then
File1.Pattern = "*.txt"
End If

End Sub

Private Sub Timer2_Timer()
If chkreadonly.Value = 1 Then
File1.ReadOnly = True
Else
File1.ReadOnly = False
End If

If chkarchive.Value = 1 Then
File1.Archive = True
Else
File1.Archive = False
End If

If chknormal.Value = 1 Then
File1.Normal = True
Else
File1.Normal = False
End If

If chksystem.Value = 1 Then
File1.System = True
Else
File1.System = False
End If

If chkhidden.Value = 1 Then
File1.Hidden = True
Else
File1.Hidden = False
End If

End Sub
