VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   ClientHeight    =   8910
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14265
   LinkTopic       =   "Form1"
   ScaleHeight     =   8910
   ScaleWidth      =   14265
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command8 
      Caption         =   "Use Filter to HTML,PDF,Text files and  All Files"
      Height          =   975
      Left            =   6840
      TabIndex        =   7
      Top             =   3720
      Width           =   2055
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Use Filter to HTML Files"
      Height          =   495
      Left            =   5400
      TabIndex        =   6
      Top             =   4200
      Width           =   1215
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Print with CommonDialogBox"
      Height          =   855
      Left            =   10920
      TabIndex        =   5
      Top             =   3840
      Width           =   1455
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Window Help Engine"
      Height          =   495
      Left            =   12600
      TabIndex        =   4
      Top             =   4200
      Width           =   1215
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Print without CommonDialogBox"
      Height          =   855
      Left            =   9240
      TabIndex        =   3
      Top             =   3840
      Width           =   1455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Open File"
      Height          =   495
      Left            =   3960
      TabIndex        =   2
      Top             =   4200
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Font"
      Height          =   1095
      Left            =   1800
      TabIndex        =   1
      Top             =   3600
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Color"
      Height          =   495
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   4200
      Width           =   1215
   End
   Begin MSComDlg.CommonDialog commd1 
      Left            =   11040
      Top             =   1920
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
 On Error GoTo ERRHANDLER

commd1.CancelError = True ' if user selects color but then click CANCEL button still button get backcolor so
                              ' it better to generate cancelerror and rest below code will not be executed
Me.Refresh
commd1.ShowColor
Command1.BackColor = commd1.Color 'Set button style property from standard to graphical inorder work properly
Me.Refresh

ERRHANDLER:
'MsgBox "User have clicked cancle"
Exit Sub
End Sub

Private Sub Command2_Click()

commd1.ShowFont
Command2.Font = commd1.FontName
Command2.FontSize = commd1.FontSize

Command2.FontBold = commd1.FontBold
Command2.FontItalic = commd1.FontItalic

Command2.FontStrikethru = commd1.FontStrikethru
Command2.FontUnderline = commd1.FontUnderline
End Sub

Private Sub Command3_Click()
 
On Error GoTo ERRHANDLER
commd1.CancelError = True
commd1.ShowOpen
MsgBox commd1.FileName

ERRHANDLER:
  'MsgBox "User have clicked cancle"
  Exit Sub
End Sub

Private Sub Command4_Click()
'PrinterDefault = True
Form1.PrintForm
End Sub

Private Sub Command5_Click()
commd1.ShowHelp
End Sub

Private Sub Command7_Click()
commd1.Filter = "Select an HTML Document (*.html)|*.html"
commd1.ShowOpen

End Sub

Private Sub Command8_Click()
commd1.Filter = "Select an HTML Document (*.html)|*.html|Select an PDF Document(*.pdf)|*.pdf|Select an Text File(*.txt)|*.txt|All Files|*.*"
commd1.FilterIndex = 3 ' for text format


commd1.ShowOpen

End Sub
