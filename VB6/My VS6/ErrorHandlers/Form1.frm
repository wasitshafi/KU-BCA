VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Various Error Handling Techniques"
   ClientHeight    =   8265
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14250
   LinkTopic       =   "Form1"
   ScaleHeight     =   8265
   ScaleWidth      =   14250
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command8 
      Caption         =   "Err.Raise"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   240
      TabIndex        =   7
      Top             =   4800
      Width           =   1575
   End
   Begin VB.CommandButton Command7 
      Caption         =   "OnError Goto ErrLbl.......Goto LblTop"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   1920
      TabIndex        =   6
      Top             =   1800
      Width           =   2535
   End
   Begin VB.CommandButton Command6 
      Caption         =   "OnError Goto ErrLbl......Resume LblTop"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   8760
      TabIndex        =   5
      Top             =   3000
      Width           =   2295
   End
   Begin VB.CommandButton Command5 
      Caption         =   "OnError Goto ErrLbl...Resume"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   6360
      TabIndex        =   4
      Top             =   3000
      Width           =   2175
   End
   Begin VB.CommandButton Command4 
      Caption         =   "OnError Goto ErrLbl......ResumeNext"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   11280
      TabIndex        =   3
      Top             =   3000
      Width           =   2535
   End
   Begin VB.CommandButton Command3 
      Caption         =   "OnError ResumeNext"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   4680
      TabIndex        =   2
      Top             =   1800
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "OnError Goto ErrLbl"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   14760
      TabIndex        =   1
      Top             =   1800
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OnError Goto ErrLbl"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   120
      TabIndex        =   0
      Top             =   1800
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Sub subR1() ' sub rotuine (can't return)
Dim dv, rm
dv = InputBox("Enter divisor : ")
rm = 10 / dv
MsgBox "10/" & dv & " Whose Remainder is : " & rm
End Sub
Private Sub Command1_Click()
On Error GoTo errlbl
Dim dv
Dim rm
dv = InputBox("Enter divisor : ")
rm = 10 / dv
MsgBox "10/" & dv & " Whose Remainder is : " & rm
Exit Sub
errlbl:
MsgBox "Error Number : " & Err.Number & vbCrLf & "Error Description : " & Err.Description & vbCrLf & "Error Source : " & Err.Source, vbCritical, "Error Details"
End Sub

Private Sub Command10_Click()
Err.Clear

End Sub


Private Sub Command3_Click()
On Error Resume Next ' if error occurs then is will skip that line & continue from the next following line...
Dim dv
Dim rm
dv = InputBox("Enter divisor : ")
rm = 10 / dv
MsgBox "10/" & dv & " Whose Remainder is : " & rm
'........
'........
'........
'........
'........
MsgBox "End of click_event Function"
End Sub

Private Sub Command4_Click()
On Error GoTo errlbl
subR1
'........
'........
'........
'........
'........
MsgBox "End of click_event Function"
Exit Sub
errlbl:
MsgBox "Error Number : " & Err.Number & vbCrLf & "Error Description : " & Err.Description & vbCrLf & "Error Source : " & Err.Source, vbCritical, "Error Details"
Resume Next ' if an error occurs then it will skip that line and continue execution from the next following line


End Sub

Private Sub Command5_Click()
On Error GoTo errlbl
subR1
'........
'........
'........
'........
'........
MsgBox "End of click_event Function"
Exit Sub

errlbl:
MsgBox "Error Number : " & Err.Number & vbCrLf & "Error Description : " & Err.Description & vbCrLf & "Error Source : " & Err.Source, vbCritical, "Error Details"
Resume ' it will resume from the line which cause an error




End Sub

Private Sub Command6_Click()
On Error GoTo errlbl
lbltop:
Dim dv
Dim rm
dv = InputBox("Enter divisor : ")
rm = 10 / dv
MsgBox "10/" & dv & " Whose Remainder is : " & rm
Exit Sub

errlbl:
MsgBox "Error Number : " & Err.Number & vbCrLf & "Error Description : " & Err.Description & vbCrLf & "Error Source : " & Err.Source, vbCritical, "Error Details"
Resume lbltop: 'it will goto lbltop untill u enter correct



End Sub

Private Sub Command7_Click()
On Error GoTo errlbl
lbltop:
Dim dv
Dim rm
dv = InputBox("Enter divisor : ")
rm = 10 / dv
MsgBox "10/" & dv & " Whose Remainder is : " & rm
Exit Sub

errlbl:
MsgBox "Error Number : " & Err.Number & vbCrLf & "Error Description : " & Err.Description & vbCrLf & "Error Source : " & Err.Source, vbCritical, "Error Details"
GoTo lbltop 'this will give  only another chance if user agains (2nd time)enter wrong data then it can't handle and programe terminates

' the above goto technique is not recommended we can use 'resume'  instead  of 'goto ...'
End Sub

Private Sub Command8_Click()
On Error GoTo errlbl
 
 '0 - 512 are reserved for system error
 '513 - 65535 are available for user-defined errors
 
Err.Raise 513, "Error Source1", "This is user-defined error description"
errlbl:
MsgBox "Error Number : " & Err.Number & vbCrLf & "Error Description : " & Err.Description & vbCrLf & "Error Source : " & Err.Source, vbCritical, "Error Details"


End Sub

Private Sub Command9_Click()
MsgBox "Last Error Number : " & Err.Number & vbCrLf & "Last Error Description : " & Err.Description & vbCrLf & "Last Error Source : " & Err.Source, vbCritical, "Error Details"

End Sub
