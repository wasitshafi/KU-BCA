VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9600
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   18120
   LinkTopic       =   "Form1"
   ScaleHeight     =   9600
   ScaleWidth      =   18120
   StartUpPosition =   3  'Windows Default
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   7815
      Left            =   10680
      TabIndex        =   14
      Top             =   600
      Width           =   7335
      _ExtentX        =   12938
      _ExtentY        =   13785
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   15
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin VB.CommandButton Command8 
      Caption         =   "previous"
      Height          =   495
      Left            =   1080
      TabIndex        =   13
      Top             =   5640
      Width           =   1215
   End
   Begin VB.CommandButton Command7 
      Caption         =   "moveFirst"
      Height          =   495
      Left            =   1080
      TabIndex        =   12
      Top             =   6240
      Width           =   1215
   End
   Begin VB.CommandButton Command6 
      Caption         =   "moveLast"
      Height          =   495
      Left            =   2280
      TabIndex        =   11
      Top             =   6240
      Width           =   1215
   End
   Begin VB.CommandButton Command5 
      Caption         =   "reconnect"
      Height          =   495
      Left            =   13680
      TabIndex        =   10
      Top             =   0
      Width           =   2295
   End
   Begin VB.CommandButton Command4 
      Caption         =   "next"
      Height          =   495
      Left            =   2280
      TabIndex        =   9
      Top             =   5640
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "insert"
      Height          =   495
      Left            =   3480
      TabIndex        =   8
      Top             =   4680
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "delete"
      Height          =   495
      Left            =   2280
      TabIndex        =   4
      Top             =   4680
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Show all "
      Height          =   495
      Left            =   1080
      TabIndex        =   3
      Top             =   4680
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   2040
      TabIndex        =   2
      Top             =   2640
      Width           =   3735
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   2040
      TabIndex        =   1
      Top             =   1680
      Width           =   3735
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   2040
      TabIndex        =   0
      Top             =   720
      Width           =   3735
   End
   Begin VB.Label Label3 
      Caption         =   "name"
      Height          =   375
      Left            =   720
      TabIndex        =   7
      Top             =   840
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "rollno"
      Height          =   255
      Left            =   600
      TabIndex        =   6
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "result"
      Height          =   375
      Left            =   720
      TabIndex        =   5
      Top             =   2760
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim conn As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim cmd As New ADODB.Command

Private Sub Command1_Click()
rs.Close

rs.Open "select * from std_result", conn, adOpenDynamic, adLockOptimistic, adCmdText


While Not rs.EOF
MsgBox "NAME : " & rs(0) & vbCrLf & "ROLL NO: " & rs(1) & vbCrLf & "RESULT :" & rs(2)

rs.MoveNext
Wend

End Sub

Private Sub Command2_Click()
Dim r As Integer

i = Val(InputBox("enter rollno "))

cmd.CommandText = "delete * from std_result where rollno = " & i & ";"

cmd.ActiveConnection = conn
cmd.Execute


End Sub

Private Sub Command3_Click()
Dim name, result As String
Dim rollno As Integer

name = InputBox("enter name ")
rollno = Val(InputBox("enter rollno "))
result = InputBox("enter result")

cmd.CommandText = "insert  into std_result values ('" & name & "'," & rollno & ",'" & result & "');"
cmd.ActiveConnection = conn
cmd.Execute


End Sub

Private Sub Command4_Click()
rs.MoveNext

If rs.EOF Then
rs.MoveLast
End If
Text1.Text = rs(0)
Text2.Text = rs(1)
Text3.Text = rs(2)


End Sub

Private Sub Command5_Click()
Set DataGrid1.DataSource = rs

End Sub

Private Sub Command6_Click()
rs.MoveLast

Text1.Text = rs(0)
Text2.Text = rs(1)
Text3.Text = rs(2)
End Sub

Private Sub Command7_Click()
rs.MoveFirst
Text1.Text = rs(0)
Text2.Text = rs(1)
Text3.Text = rs(2)
End Sub

Private Sub Command8_Click()
rs.MovePrevious

If rs.BOF Then
rs.MoveFirst
End If
Text1.Text = rs(0)
Text2.Text = rs(1)
Text3.Text = rs(2)
End Sub

Private Sub Form_Activate()

conn.Open "Provider = Microsoft.jet.OLEDB.4.0; Data source = G:\BCA\3rd year\MY VB FILES\adodb2\db1.mdb"
rs.CursorLocation = adUseClient
rs.Open "select * from std_result", conn, adOpenDynamic, adLockOptimistic, adCmdText

Text1.Text = rs(0)
Text2.Text = rs(1)
Text3.Text = rs(2)

Set DataGrid1.DataSource = rs

End Sub
