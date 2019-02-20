VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Form1 
   BackColor       =   &H8000000A&
   ClientHeight    =   7740
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14505
   LinkTopic       =   "Form1"
   ScaleHeight     =   10935
   ScaleWidth      =   20250
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "ADD Record"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   10680
      TabIndex        =   6
      Top             =   4320
      Width           =   2535
   End
   Begin VB.TextBox txtbcontactno 
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
      Left            =   10680
      TabIndex        =   3
      Top             =   2280
      Width           =   3135
   End
   Begin VB.TextBox txtbaddress 
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
      Left            =   10680
      TabIndex        =   2
      Top             =   1680
      Width           =   3135
   End
   Begin VB.TextBox txtbemailid 
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
      Left            =   10680
      TabIndex        =   4
      Top             =   2880
      Width           =   3135
   End
   Begin VB.TextBox txtbresult 
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
      Left            =   10680
      TabIndex        =   5
      Top             =   3480
      Width           =   3135
   End
   Begin VB.TextBox txtbname 
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
      Left            =   10680
      TabIndex        =   1
      Top             =   1080
      Width           =   3135
   End
   Begin VB.TextBox txtbrollno 
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
      Left            =   10680
      TabIndex        =   0
      Top             =   480
      Width           =   3135
   End
   Begin VB.Timer Timer1 
      Interval        =   300
      Left            =   3960
      Top             =   4920
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Bindings        =   "Form1.frx":0000
      Height          =   4935
      Left            =   0
      TabIndex        =   7
      Top             =   0
      Width           =   8055
      _ExtentX        =   14208
      _ExtentY        =   8705
      _Version        =   393216
   End
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "G:\BCA\3rd year\MY VB FILES\Creating ODBC DataSource   (System DSN for Ms.Access)\student_management_sys(converted to 97).mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   1440
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "student_info"
      Top             =   4920
      Width           =   2535
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "NOTE :  In order to use adodb at runt ime user must include 2 Refernces"
      BeginProperty Font 
         Name            =   "Segoe Script"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   450
      Left            =   360
      TabIndex        =   18
      Top             =   8160
      Width           =   11340
   End
   Begin VB.Label Label13 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "1 . Microsoft ActiveX Data  Object Library"
      BeginProperty Font 
         Name            =   "Segoe Script"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   450
      Left            =   360
      TabIndex        =   17
      Top             =   8880
      Width           =   6495
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "2 . Microsoft DAQ 3.51 Object Library"
      BeginProperty Font 
         Name            =   "Segoe Script"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   450
      Left            =   360
      TabIndex        =   16
      Top             =   9360
      Width           =   5940
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "It should be noted that Flexgrid and data control is just used to see database "
      BeginProperty Font 
         Name            =   "Segoe Script"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   450
      Left            =   120
      TabIndex        =   15
      Top             =   6120
      Width           =   11865
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
      Left            =   8760
      TabIndex        =   14
      Top             =   1200
      Width           =   660
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
      Left            =   8760
      TabIndex        =   13
      Top             =   1800
      Width           =   1155
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
      Left            =   8760
      TabIndex        =   12
      Top             =   2400
      Width           =   1815
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
      Left            =   8760
      TabIndex        =   11
      Top             =   3000
      Width           =   1320
   End
   Begin VB.Label Label4 
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
      Left            =   19320
      TabIndex        =   10
      Top             =   14040
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
      Left            =   8760
      TabIndex        =   9
      Top             =   3600
      Width           =   990
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
      Left            =   8760
      TabIndex        =   8
      Top             =   600
      Width           =   1320
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
On Error GoTo err
Dim rollno As Integer
Dim name, address, contactno, emailid, result As String


rollno = Val(txtbrollno.Text)
name = txtbname.Text
address = txtbaddress.Text
contactno = txtbcontactno.Text
emailid = txtbemailid.Text
result = txtbresult.Text

cmd.CommandText = "insert into student_info values(" & rollno & " ,'" & name & "','" & address & "'," & Val(contactno) & ",'" & emailid & "','" & result & "')"
cmd.ActiveConnection = conn
cmd.Execute

If (err.Number = 0) Then ' no error is occured
txtbrollno.Text = ""
txtbname.Text = ""
txtbaddress.Text = ""
txtbcontactno.Text = ""
txtbemailid.Text = ""
txtbresult.Text = ""
End If

Exit Sub
err:
MsgBox "Error Description : " & err.Description, vbCritical, "Error Occured"
Exit Sub
End Sub

Private Sub Form_Activate()
conn.Open "dsn=mydsnformdb"
If conn.State = 1 Then
MsgBox "connection established successfully", vbInformation
Else
MsgBox "çonnection Is Not estabilished", vbCritical
End If

End Sub



Private Sub Timer1_Timer()
Data1.Refresh

End Sub
