VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7905
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14955
   LinkTopic       =   "Form1"
   ScaleHeight     =   10935
   ScaleWidth      =   20250
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox txtbhd 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6000
      TabIndex        =   9
      Top             =   3480
      Width           =   4455
   End
   Begin VB.TextBox txtbram 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6000
      TabIndex        =   8
      Top             =   4680
      Width           =   4455
   End
   Begin VB.TextBox txtbos 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6000
      TabIndex        =   7
      Top             =   4080
      Width           =   4455
   End
   Begin VB.TextBox txtbprocessor 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6000
      TabIndex        =   6
      Top             =   2880
      Width           =   4455
   End
   Begin VB.Frame Frame1 
      Caption         =   "Methods"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3735
      Left            =   11880
      TabIndex        =   5
      Top             =   2160
      Width           =   3975
      Begin VB.CommandButton Command1 
         Caption         =   "Change OS"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   3
         Left            =   240
         TabIndex        =   13
         Top             =   2760
         Width           =   3375
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Increase HD"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   2
         Left            =   240
         TabIndex        =   12
         Top             =   2040
         Width           =   3375
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Decrease RAM"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   1
         Left            =   240
         TabIndex        =   11
         Top             =   1320
         Width           =   3375
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Increase RAM"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   0
         Left            =   240
         TabIndex        =   10
         Top             =   600
         Width           =   3375
      End
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "NOTE : "
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
      Left            =   240
      TabIndex        =   17
      Top             =   6360
      Width           =   1095
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "1 .  User can enter processor by typing is the processor textbox."
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
      Left            =   1080
      TabIndex        =   16
      Top             =   6960
      Width           =   8445
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   $"Form1.frx":0000
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   1080
      TabIndex        =   15
      Top             =   7440
      Width           =   13185
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "   "
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
      Left            =   3600
      TabIndex        =   14
      Top             =   5280
      Width           =   270
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "RAM"
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
      Left            =   3480
      TabIndex        =   4
      Top             =   4800
      Width           =   630
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Operating System "
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
      Left            =   3480
      TabIndex        =   3
      Top             =   4200
      Width           =   2445
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "HD Capacity "
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
      Left            =   3480
      TabIndex        =   2
      Top             =   3600
      Width           =   1710
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Processor "
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
      Left            =   3480
      TabIndex        =   1
      Top             =   3000
      Width           =   1380
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Simple Computer Class "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   7560
      TabIndex        =   0
      Top             =   360
      Width           =   5175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private mcomp As New clscomputer




Private Sub Command1_Click(Index As Integer)
Select Case Index
Case 0: mcomp.incram
Case 1: mcomp.decram
Case 2: mcomp.incrhd
Case 3: mcomp.cngos
End Select
Call fillform

End Sub

Private Sub Form_Load()
With mcomp
.processor = "Pentium"
.hd = 1
.ram = 4
.os = "windows 8"
End With
Call fillform
Label6.Caption = " Processor is " & mcomp.processor

End Sub

Sub fillform()
txtbprocessor.Text = mcomp.processor
txtbhd.Text = mcomp.hd
txtbram.Text = mcomp.ram
txtbos.Text = mcomp.os
Label6.Caption = " Processor is " & mcomp.processor

End Sub


Private Sub txtbprocessor_Change()
mcomp.processor = txtbprocessor
fillform

End Sub
