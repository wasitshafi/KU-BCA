VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7935
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15015
   LinkTopic       =   "Form1"
   ScaleHeight     =   10935
   ScaleWidth      =   20250
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton btupdate 
      Caption         =   "Update"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   14520
      TabIndex        =   18
      Top             =   7200
      Width           =   1215
   End
   Begin VB.CommandButton btdelete 
      Caption         =   "Delete"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   16320
      TabIndex        =   17
      Top             =   6480
      Width           =   1815
   End
   Begin VB.CommandButton btaddnew 
      Caption         =   "Add New"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   14280
      TabIndex        =   16
      Top             =   6480
      Width           =   1815
   End
   Begin VB.CommandButton btnext 
      Caption         =   "Next"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   12180
      TabIndex        =   15
      Top             =   6480
      Width           =   1815
   End
   Begin VB.CommandButton btprevious 
      Caption         =   "Previous"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   10080
      TabIndex        =   14
      Top             =   6480
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Count records"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   18360
      TabIndex        =   13
      Top             =   6480
      Width           =   1815
   End
   Begin VB.Timer Timer1 
      Interval        =   300
      Left            =   5160
      Top             =   6240
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Bindings        =   "Form1.frx":0000
      Height          =   6135
      Left            =   0
      TabIndex        =   12
      Top             =   0
      Width           =   11295
      _ExtentX        =   19923
      _ExtentY        =   10821
      _Version        =   393216
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "G:\BCA\3rd year\MY VB FILES\ADO DataContro(ADODC) with System DSN for Ms. Access\student_management_sys(converted to 97).mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   495
      Left            =   2400
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "student_info"
      Top             =   6240
      Width           =   2655
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   855
      Left            =   12240
      Top             =   4800
      Width           =   4815
      _ExtentX        =   8493
      _ExtentY        =   1508
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   2
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=MSDASQL.1;Persist Security Info=False;Data Source=mydsn2"
      OLEDBString     =   "Provider=MSDASQL.1;Persist Security Info=False;Data Source=mydsn2"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "student_info"
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.TextBox txtbrollno 
      DataField       =   "s_rollno"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   13800
      TabIndex        =   5
      Top             =   720
      Width           =   3135
   End
   Begin VB.TextBox txtbname 
      DataField       =   "s_name"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   13800
      TabIndex        =   4
      Top             =   1320
      Width           =   3135
   End
   Begin VB.TextBox txtbresult 
      DataField       =   "result"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   13800
      TabIndex        =   3
      Top             =   3720
      Width           =   3135
   End
   Begin VB.TextBox txtbemailid 
      DataField       =   "email-id"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   13800
      TabIndex        =   2
      Top             =   3120
      Width           =   3135
   End
   Begin VB.TextBox txtbaddress 
      DataField       =   "s_address"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   13800
      TabIndex        =   1
      Top             =   1920
      Width           =   3135
   End
   Begin VB.TextBox txtbcontactno 
      DataField       =   "s_contactno"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   13800
      TabIndex        =   0
      Top             =   2520
      Width           =   3135
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Roll no "
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   11880
      TabIndex        =   11
      Top             =   840
      Width           =   1320
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Result"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   11880
      TabIndex        =   10
      Top             =   3840
      Width           =   990
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Email-ID"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   11880
      TabIndex        =   9
      Top             =   3240
      Width           =   1320
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Contact no."
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   11880
      TabIndex        =   8
      Top             =   2640
      Width           =   1815
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Address"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   11880
      TabIndex        =   7
      Top             =   2040
      Width           =   1155
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Name"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   11880
      TabIndex        =   6
      Top             =   1440
      Width           =   660
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btaddnew_Click()
Adodc1.Recordset.AddNew
txtbrollno.SetFocus

txtbrollno.Text = ""
txtbname.Text = ""
txtbaddress.Text = ""
txtbcontactno.Text = ""
txtbemailid.Text = ""
txtbresult.Text = ""
btupdate.Enabled = True
btaddnew.Enabled = False


End Sub

Private Sub btdelete_Click()
If Adodc1.Recordset.RecordCount = 0 Then
    MsgBox "no record found...."
  Else
   Adodc1.Recordset.Delete
    
     If Adodc1.Recordset.EOF Then
        Adodc1.Refresh
        
        Adodc1.Recordset.MoveLast
        
     ElseIf Adodc1.Recordset.BOF Then
        Adodc1.Refresh
        Adodc1.Recordset.MoveFirst
     Else
     Adodc1.Recordset.MoveNext
     End If
End If

End Sub


Private Sub btnext_Click()
Adodc1.Recordset.MoveNext
If Adodc1.Recordset.EOF Then
Adodc1.Recordset.MoveLast
End If

End Sub

Private Sub btprevious_Click()

Adodc1.Recordset.MovePrevious
If Adodc1.Recordset.BOF Then
Adodc1.Recordset.MoveFirst
End If

End Sub

Private Sub btupdate_Click()
Adodc1.Recordset.Update
btupdate.Enabled = False
btaddnew.Enabled = True

End Sub


Private Sub btupdate2_Click()
Adodc1.Recordset.Update
btupdate2.Enabled = False
btedit.Enabled = True

End Sub

Private Sub Command2_Click()
Adodc1.Refresh
MsgBox "Total no. of records in database are :" & Adodc1.Recordset.RecordCount

End Sub

Private Sub Timer1_Timer()
Data1.Refresh

End Sub
