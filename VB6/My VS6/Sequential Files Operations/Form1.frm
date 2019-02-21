VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8175
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14070
   LinkTopic       =   "Form1"
   ScaleHeight     =   8175
   ScaleWidth      =   14070
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command4 
      Caption         =   "FreeFile()"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   7680
      TabIndex        =   3
      Top             =   1200
      Width           =   2175
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Mode : APPEND"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3120
      TabIndex        =   2
      Top             =   1200
      Width           =   2175
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Mode : INPUT"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   5400
      TabIndex        =   1
      Top             =   1200
      Width           =   2175
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Mode : OUTPUT"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   840
      TabIndex        =   0
      Top             =   1200
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
 Private Sub Command1_Click()
Dim filepath
filepath = App.Path + "\"
Open filepath + "newtext1.txt" For Output As #1   'MODE OUTPUT: create the file if not exists else it replaces the file. FILE NO: can be from 1 to 255
Close 1 ' closing only file no. 1
'close 1,2,3,4

'Close   ' closing all files that are open
End Sub

Private Sub Command2_Click()
Dim filepath
filepath = App.Path + "\"
Open filepath + "newtext2.txt" For Append As #2   'MODE APPEND: create the file if not exists . FILE NO: can be from 1 to 255
Close 2 ' closing only file no. 1
'Close   ' closing all files that are open
End Sub

Private Sub Command3_Click()
On Error GoTo err
Dim filepath
filepath = App.Path + "\"
Open filepath + "newtext1.txt" For Input As #3  'MODE INPUT: create an error if not exists. FILE NO: can be from 1 to 255
Close 3 ' closing only file no. 1
'Close   ' closing all files that are open
Exit Sub
err:
MsgBox err.Description
Exit Sub
End Sub

Private Sub Command4_Click()
MsgBox "Value of FreeFile is : " & FreeFile() & vbCrLf & "This return 1 because files are also colsed(1,2,3) so the next available is 1 if some are opened the it returns maxfno+1"
End Sub
