VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H00808080&
   Caption         =   "DYNAMIC ADODB DATA CONTROL"
   ClientHeight    =   7380
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15870
   LinkTopic       =   "Form3"
   ScaleHeight     =   7380
   ScaleWidth      =   15870
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      Height          =   1695
      Left            =   7320
      TabIndex        =   25
      Top             =   5760
      Visible         =   0   'False
      Width           =   5895
      Begin VB.CommandButton Command5 
         Caption         =   "ok"
         Height          =   375
         Left            =   4080
         TabIndex        =   29
         Top             =   1200
         Width           =   1095
      End
      Begin VB.CommandButton Command2 
         Caption         =   "cancel"
         Height          =   495
         Left            =   2040
         TabIndex        =   28
         Top             =   1080
         Width           =   1335
      End
      Begin VB.TextBox Text2 
         Height          =   495
         Left            =   1800
         TabIndex        =   27
         Top             =   360
         Width           =   3495
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "enter rollno"
         Height          =   495
         Left            =   240
         TabIndex        =   26
         Top             =   360
         Width           =   1215
      End
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Command4"
      Height          =   375
      Left            =   1200
      TabIndex        =   24
      Top             =   3720
      Width           =   1575
   End
   Begin VB.CommandButton btsearchbyrno 
      Caption         =   "search by rollno"
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
      Left            =   4200
      TabIndex        =   23
      Top             =   7500
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
      Left            =   6300
      TabIndex        =   22
      Top             =   7500
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.CommandButton btAddnew 
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
      Left            =   8400
      TabIndex        =   21
      Top             =   7500
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.CommandButton btupdate 
      Caption         =   "Update"
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
      Left            =   9450
      TabIndex        =   20
      Top             =   8500
      Visible         =   0   'False
      Width           =   1815
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
      Left            =   12600
      TabIndex        =   19
      Top             =   7500
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.CommandButton btcount 
      Caption         =   "Edit"
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
      Index           =   0
      Left            =   10500
      TabIndex        =   18
      Top             =   7500
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.CommandButton btcountrecords 
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
      Left            =   14700
      TabIndex        =   17
      Top             =   7500
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.CommandButton btgotoform2 
      Caption         =   "ADODC CONTROL"
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
      Left            =   14595
      TabIndex        =   16
      Top             =   500
      Width           =   2580
   End
   Begin VB.CommandButton btgotoform1 
      Caption         =   "DATA CONTROL"
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
      Left            =   12105
      TabIndex        =   15
      Top             =   500
      Width           =   2280
   End
   Begin VB.TextBox txtbrollno 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   465
      Left            =   9000
      TabIndex        =   8
      Top             =   2500
      Width           =   3015
   End
   Begin VB.TextBox txtbaddress 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   465
      Left            =   9000
      TabIndex        =   7
      Top             =   3200
      Width           =   3015
   End
   Begin VB.TextBox txtbcontactno 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   465
      Left            =   9000
      TabIndex        =   6
      Top             =   3900
      Width           =   3015
   End
   Begin VB.TextBox txtbemailid 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   465
      Left            =   9000
      TabIndex        =   5
      Top             =   4600
      Width           =   3015
   End
   Begin VB.TextBox txtbresult 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   465
      Left            =   9000
      TabIndex        =   4
      Top             =   5300
      Width           =   3015
   End
   Begin VB.TextBox txtbname 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   465
      Left            =   9000
      TabIndex        =   3
      Top             =   1800
      Width           =   3015
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   19440
      TabIndex        =   1
      Top             =   2640
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   16440
      TabIndex        =   0
      Top             =   2520
      Visible         =   0   'False
      Width           =   2775
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Rollno: "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   390
      Left            =   7500
      TabIndex        =   14
      Top             =   2500
      Width           =   960
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Result: "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   390
      Left            =   7500
      TabIndex        =   13
      Top             =   5300
      Width           =   990
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Address: "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   390
      Index           =   1
      Left            =   7500
      TabIndex        =   12
      Top             =   3200
      Width           =   1260
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Contact no: "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   390
      Index           =   0
      Left            =   7500
      TabIndex        =   11
      Top             =   3900
      Width           =   1575
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Email-id: "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   390
      Left            =   7500
      TabIndex        =   10
      Top             =   4600
      Width           =   1215
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Name:  "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   390
      Left            =   7500
      TabIndex        =   9
      Top             =   1800
      Width           =   1020
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   615
      Left            =   18480
      TabIndex        =   2
      Top             =   3480
      Visible         =   0   'False
      Width           =   1695
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As New ADODB.Recordset


Private Sub btgotoform1_Click()
Unload Me
Form1.Show
End Sub

Private Sub btgotoform2_Click()
Unload Me
Form2.Show
End Sub



Private Sub btsearchbyrno_Click()
Frame1.Visible = True
Text2.SetFocus

End Sub

Private Sub Command1_Click()
    Call connection
    Dim str As String
    Set rs = New Recordset
    
    str = "select * from student_info where s_rollno =" + Text1.Text
    rs.Open str, conn, adOpenDynamic, adLockOptimistic
    If rs.EOF Then
        MsgBox "no record found"
    Else
        Label1.Caption = rs.Fields(1)
    End If
    conn.Close
End Sub



Private Sub Command2_Click()
Frame1.Visible = false;
End Sub


Private Sub Command5_Click()
If Text2.Text = "" Then
MsgBox "enter rollno"
Else
Call connection
Dim str As String
str = "select * from student_info where s_rollno=" & Val(Text2.Text)
Set rs = New ADODB.Recordset
rs.Open str, conn, adOpenDynamic, adLockOptimistic
If rs.EOF Then
MsgBox "No such record found... ", vbCritical
Else
MsgBox "Record found", vbInformation
End If
End If
Frame1.Visible = False

End Sub

Private Sub Form_Load()

Frame1.Visible = False

Call connection
    Dim str As String
    str = "select * from student_info "
    Set rs = New ADODB.Recordset
   rs.Open str, conn, adOpenDynamic, adLockOptimistic
   If rs.EOF Then
   MsgBox "no such record found"
   Else
   Set txtbaddress.DataSource = rs
  
  ' txtbaddress.DataField = rs.Fields(0)
   
   txtbrollno.Text = rs.Fields(0)
   txtbname.Text = rs.Fields(1)
'   txtbaddress.Text = rs.Fields(2)
   txtbcontactno.Text = rs.Fields(3)
'   txtbemailid.Text = rs.Fields(4)
'   txtbresult.Text = rs.Fields(5)
   
   
   
   End If
   
   
   Me.Refresh
   
    
    
    
    
'    Set rs = New Recordset
     
'    rs.connection = conn
'
'    rs.OpenRecordset = str
'
'    'rs.Open str, conn, adOpenDynamic, adLockOptimistic
'
'    If rs.EOF Then
'        MsgBox "no record found"
'    Else
'
'    Set txtbaddress.DataSource = rs
'
'    txtbaddress.DataField = rs.Fields(2)
'
''    txtbrollno.Text = rs.Fields("s_rollno")
''    txtbname.Text = rs.Fields("s_name")
''    txtbaddress.Text = rs.Fields("s_address")
''    txtbcontactno.Text = rs.Fields("s_contactno")
''    txtbemailid.Text = rs.Fields("email-id")
''    txtbresult.Text = rs.Fields("result")
'    End If
End Sub
