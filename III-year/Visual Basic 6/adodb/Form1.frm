VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9600
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   17835
   LinkTopic       =   "Form1"
   ScaleHeight     =   9600
   ScaleWidth      =   17835
   StartUpPosition =   3  'Windows Default
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   3855
      Left            =   6720
      TabIndex        =   13
      Top             =   0
      Width           =   8295
      _ExtentX        =   14631
      _ExtentY        =   6800
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
      Caption         =   "last"
      Height          =   615
      Left            =   9960
      TabIndex        =   12
      Top             =   4320
      Width           =   1215
   End
   Begin VB.CommandButton Command7 
      Caption         =   "first"
      Height          =   615
      Left            =   8640
      TabIndex        =   11
      Top             =   4320
      Width           =   1335
   End
   Begin VB.CommandButton Command6 
      Caption         =   "next"
      Height          =   615
      Left            =   7440
      TabIndex        =   10
      Top             =   4320
      Width           =   1215
   End
   Begin VB.CommandButton Command5 
      Caption         =   "previous"
      Height          =   615
      Left            =   6240
      TabIndex        =   9
      Top             =   4320
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "delete"
      Height          =   495
      Left            =   1800
      TabIndex        =   8
      Top             =   4560
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "edit"
      Height          =   495
      Left            =   2880
      TabIndex        =   7
      Top             =   4560
      Width           =   1095
   End
   Begin VB.CommandButton btaddnew 
      Caption         =   "add new"
      Height          =   495
      Left            =   720
      TabIndex        =   6
      Top             =   4560
      Width           =   1095
   End
   Begin VB.TextBox txtresult 
      Height          =   615
      Left            =   2760
      TabIndex        =   5
      Top             =   3120
      Width           =   3615
   End
   Begin VB.TextBox txtrollno 
      Height          =   615
      Left            =   2760
      TabIndex        =   4
      Top             =   2280
      Width           =   3615
   End
   Begin VB.TextBox txtname 
      Height          =   615
      Left            =   2760
      TabIndex        =   3
      Top             =   1440
      Width           =   3615
   End
   Begin VB.Label Label3 
      Caption         =   "rollno"
      Height          =   615
      Left            =   840
      TabIndex        =   2
      Top             =   2280
      Width           =   1575
   End
   Begin VB.Label Label2 
      Caption         =   "result"
      Height          =   615
      Left            =   840
      TabIndex        =   1
      Top             =   3120
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "name"
      Height          =   615
      Left            =   840
      TabIndex        =   0
      Top             =   1440
      Width           =   1575
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



Private Sub btaddnew_Click()
If btaddnew.Caption = "add new" Then
rs.AddNew
btaddnew.Caption = "update"
Else
rs.Update
btaddnew.Caption = "add new"
End If
End Sub

Private Sub Command3_Click()
rs.Delete

End Sub

Private Sub Command4_Click()

End Sub

Private Sub Command5_Click()
rs.MovePrevious
If rs.BOF Then
rs.MoveFirst
End If


End Sub

Private Sub Command6_Click()
rs.MoveNext
If rs.EOF Then
rs.MoveLast
End If

End Sub

Private Sub Command7_Click()
rs.MoveFirst

End Sub

Private Sub Command8_Click()
rs.MoveLast

End Sub

Private Sub Form_Load()
conn.Open "Provider = Microsoft.jet.OLEDB.4.0; Data source = G:\BCA\3rd year\MY VB FILES\adodb\db1.mdb"
rs.CursorLocation = adUseClient
rs.Open "select * from std_result", conn, adOpenDynamic, adLockOptimistic

Set txtname.DataSource = rs
txtname.DataField = "name"

Set txtrollno.DataSource = rs
txtrollno.DataField = "rollno"

Set txtresult.DataSource = rs
txtresult.DataField = "result"

Set DataGrid1.DataSource = rs

End Sub
