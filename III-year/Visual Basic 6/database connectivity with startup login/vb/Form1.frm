VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00808080&
   Caption         =   "DATA CONTROL"
   ClientHeight    =   9615
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   19050
   FillColor       =   &H00404040&
   ForeColor       =   &H00000000&
   LinkTopic       =   "Form1"
   ScaleHeight     =   9615
   ScaleWidth      =   19050
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command7 
      Caption         =   "Form2"
      Height          =   615
      Left            =   1920
      TabIndex        =   24
      Top             =   360
      Width           =   1695
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Form3"
      Height          =   615
      Left            =   3600
      TabIndex        =   23
      Top             =   360
      Width           =   1695
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Form5"
      Height          =   615
      Left            =   5160
      TabIndex        =   22
      Top             =   360
      Width           =   1695
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Form1"
      Height          =   615
      Left            =   240
      TabIndex        =   21
      Top             =   360
      Width           =   1695
   End
   Begin VB.CommandButton btgotoform1 
      Caption         =   "DYNAMIC ADODB"
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
      TabIndex        =   20
      Top             =   500
      Width           =   2580
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
      Left            =   12105
      TabIndex        =   19
      Top             =   500
      Width           =   2280
   End
   Begin VB.CommandButton Command1 
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
      TabIndex        =   18
      Top             =   7500
      Width           =   1815
   End
   Begin VB.TextBox txtbrollno 
      DataField       =   "s_rollno"
      DataSource      =   "Data1"
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
      TabIndex        =   1
      Top             =   2500
      Width           =   3015
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
      TabIndex        =   15
      Top             =   7500
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
      TabIndex        =   16
      Top             =   7500
      Width           =   1815
   End
   Begin VB.CommandButton btupdate 
      BackColor       =   &H00FFFFFF&
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
      TabIndex        =   14
      Top             =   8500
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
      TabIndex        =   13
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
      TabIndex        =   12
      Top             =   7500
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
      Left            =   4200
      TabIndex        =   11
      Top             =   7500
      Width           =   1815
   End
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   $"Form1.frx":0000
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   375
      Left            =   2280
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "student_info"
      Top             =   2880
      Visible         =   0   'False
      Width           =   2895
   End
   Begin VB.TextBox txtbaddress 
      DataField       =   "s_address"
      DataSource      =   "Data1"
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
      TabIndex        =   2
      Top             =   3200
      Width           =   3015
   End
   Begin VB.TextBox txtbcontactno 
      DataField       =   "s_contactno"
      DataSource      =   "Data1"
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
      Top             =   3900
      Width           =   3015
   End
   Begin VB.TextBox txtbemailid 
      DataField       =   "email-id"
      DataSource      =   "Data1"
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
      Top             =   4600
      Width           =   3015
   End
   Begin VB.TextBox txtbresult 
      DataField       =   "result"
      DataSource      =   "Data1"
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
      Top             =   5300
      Width           =   3015
   End
   Begin VB.TextBox txtbname 
      DataField       =   "s_name"
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
      TabIndex        =   0
      Top             =   1800
      Width           =   3015
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
      TabIndex        =   17
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
      TabIndex        =   10
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
      Left            =   7500
      TabIndex        =   9
      Top             =   3200
      Width           =   1260
   End
   Begin VB.Label Label3 
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
      Left            =   7500
      TabIndex        =   8
      Top             =   3900
      Width           =   1575
   End
   Begin VB.Label Label2 
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
      TabIndex        =   7
      Top             =   4600
      Width           =   1215
   End
   Begin VB.Label Label1 
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
      TabIndex        =   6
      Top             =   1800
      Width           =   1020
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub btAddnew_Click()
 
Data1.Recordset.AddNew
txtbcontactno.Text = ""
txtbrollno.Text = ""
txtbname.SetFocus
End Sub

Private Sub btdelete_Click()
If Data1.Recordset.RecordCount = 0 Then
    MsgBox "no record found...."
  Else
   Data1.Recordset.Delete
   Data1.Refresh
  
    If Data1.Recordset.EOF Then
     Data1.Recordset.MoveLast
     Data1.Refresh
       
    ElseIf Data1.Recordset.BOF Then
      Data1.Recordset.MoveFirst
      Data1.Refresh
      
     End If
    End If
    
 
End Sub



Private Sub btgotoform1_Click()
Unload Me
Form3.Show
End Sub

Private Sub btgotoform2_Click()
Unload Me
Form2.Show
End Sub

Private Sub btupdate_Click()
Data1.Recordset.Update
End Sub

Private Sub btnext_Click()
 Data1.Recordset.MoveNext
 If Data1.Recordset.EOF Then
    Data1.Recordset.MoveLast
 End If

End Sub

Private Sub btprevious_Click()
 Data1.Recordset.MovePrevious
  If Data1.Recordset.BOF Then
   Data1.Recordset.MoveFirst
  End If

End Sub

Private Sub Command1_Click()
MsgBox "Total no. of records in database are :" & Data1.Recordset.RecordCount
End Sub



Private Sub Command3_Click()
Form1.Show

End Sub

Private Sub Command4_Click()
Form5.Show

End Sub

Private Sub Command5_Click()
Form4.Show
End Sub

Private Sub Command6_Click()
Form3.Show
End Sub

Private Sub Command7_Click()
Form2.Show
End Sub

