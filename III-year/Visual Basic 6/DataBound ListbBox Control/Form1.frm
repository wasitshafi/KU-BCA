VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Object = "{FAEEE763-117E-101B-8933-08002B2F4F5A}#1.1#0"; "DBLIST32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9030
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12300
   LinkTopic       =   "Form1"
   ScaleHeight     =   9030
   ScaleWidth      =   12300
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "Refresh Me"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   700
      Left            =   10800
      TabIndex        =   8
      Top             =   6720
      Width           =   2175
   End
   Begin MSDBCtls.DBList DBList1 
      Bindings        =   "Form1.frx":0000
      DataField       =   "s_name"
      DataSource      =   "Data1"
      Height          =   3525
      Left            =   10680
      TabIndex        =   7
      Top             =   3000
      Width           =   5295
      _ExtentX        =   9340
      _ExtentY        =   6218
      _Version        =   393216
      ListField       =   "s_name"
      BoundColumn     =   "s_name"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   10440
      Top             =   1320
   End
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "G:\BCA\3rd year\MY VB FILES\DataBound ListbBox Control\student_management_sys(convertedto 97).mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   735
      Left            =   0
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "student_info"
      Top             =   6840
      Width           =   5775
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Refresh Me"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   700
      Left            =   5760
      TabIndex        =   0
      Top             =   6840
      Width           =   2175
   End
   Begin MSDBGrid.DBGrid DBGrid1 
      Bindings        =   "Form1.frx":0014
      Height          =   6735
      Left            =   0
      OleObjectBlob   =   "Form1.frx":0028
      TabIndex        =   1
      Top             =   0
      Width           =   8415
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Select Name : "
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
      Left            =   8400
      TabIndex        =   6
      Top             =   2880
      Width           =   1950
   End
   Begin VB.Label lblselname 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000A&
      Caption         =   "    "
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
      Left            =   8640
      TabIndex        =   5
      Top             =   1680
      Width           =   360
   End
   Begin VB.Label lblselname2 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000A&
      Caption         =   "  "
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
      Left            =   8640
      TabIndex        =   4
      Top             =   2160
      Width           =   360
   End
   Begin VB.Label lblfield1 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000C&
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
      Left            =   8640
      TabIndex        =   3
      Top             =   360
      Width           =   360
   End
   Begin VB.Label lblfield2 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000C&
      Caption         =   "  "
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
      Left            =   8640
      TabIndex        =   2
      Top             =   840
      Width           =   360
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command2_Click()
DBList1.Refresh
End Sub

Private Sub Timer1_Timer()
lblselname.Caption = ""
lblselname.Caption = "Selected item is : " & DBList1.Text
lblselname2.Caption = "Selected item is : " & DBList1.BoundText
lblfield1.Caption = "Database column name is  : " & DBList1.DataField
lblfield2.Caption = "Database column name is  : " & DBList1.ListField






End Sub
