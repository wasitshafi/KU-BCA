VERSION 5.00
Object = "{C1A8AF28-1257-101B-8FB0-0020AF039CA3}#1.1#0"; "MCI32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7755
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7755
   ScaleWidth      =   15000
   StartUpPosition =   3  'Windows Default
   WindowState     =   1  'Minimized
   Begin VB.Timer Timer1 
      Interval        =   2000
      Left            =   13080
      Top             =   3840
   End
   Begin VB.CommandButton Command6 
      Caption         =   "next"
      Height          =   735
      Left            =   5040
      TabIndex        =   5
      Top             =   2280
      Width           =   1935
   End
   Begin VB.CommandButton Command5 
      Caption         =   "previous"
      Height          =   735
      Left            =   6960
      TabIndex        =   4
      Top             =   2280
      Width           =   1935
   End
   Begin VB.CommandButton Command4 
      Caption         =   "stop"
      Height          =   735
      Left            =   8880
      TabIndex        =   3
      Top             =   2280
      Width           =   1935
   End
   Begin VB.CommandButton Command3 
      Caption         =   "exit"
      Height          =   735
      Left            =   10800
      TabIndex        =   2
      Top             =   2280
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "PLAY"
      Height          =   735
      Left            =   3120
      TabIndex        =   1
      Top             =   2280
      Width           =   1935
   End
   Begin MCI.MMControl mycd 
      Height          =   855
      Left            =   3720
      TabIndex        =   0
      Top             =   720
      Width           =   8175
      _ExtentX        =   14420
      _ExtentY        =   1508
      _Version        =   393216
      DeviceType      =   ""
      FileName        =   "E:\1.2HAZRAT MOOSA1.mp3"
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   4560
      TabIndex        =   7
      Top             =   3360
      Width           =   1170
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Track no : "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   3000
      TabIndex        =   6
      Top             =   3360
      Width           =   1440
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
mycd.Command = "Play"

End Sub

Private Sub Command3_Click()
End
End Sub

Private Sub Command4_Click()
mycd.Command = "Stop"
End Sub

Private Sub Command5_Click()
mycd.Command = "Prev"
End Sub

Private Sub Command6_Click()
mycd.Command = "Next"
End Sub

Private Sub Form_Load()
Left = (Screen.Width - Width) / 2
Top = (Screen.Height - Height) / 2
mycd.Command = "Open"
'to use this cd player we have to set file name in multimedia control property
End Sub

Private Sub Timer1_Timer()
Label2.Caption = mycd.Track
End Sub
