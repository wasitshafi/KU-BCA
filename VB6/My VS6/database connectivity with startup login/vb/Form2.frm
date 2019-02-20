VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00808080&
   Caption         =   "ADODC DATA CONTROL"
   ClientHeight    =   9225
   ClientLeft      =   9570
   ClientTop       =   465
   ClientWidth     =   16800
   LinkTopic       =   "Form2"
   ScaleHeight     =   10935
   ScaleWidth      =   20250
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
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
      Left            =   14280
      TabIndex        =   20
      Top             =   720
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
      TabIndex        =   17
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
      TabIndex        =   16
      Top             =   7500
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
      Left            =   8400
      TabIndex        =   15
      Top             =   7500
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
      TabIndex        =   14
      Top             =   8500
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
      TabIndex        =   13
      Top             =   7500
      Width           =   1815
   End
   Begin VB.CommandButton btedit 
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
      Left            =   10500
      TabIndex        =   12
      Top             =   7500
      Width           =   1815
   End
   Begin VB.PictureBox Adodc1 
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   1200
      ScaleHeight     =   675
      ScaleWidth      =   2355
      TabIndex        =   21
      Top             =   3840
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.TextBox txtbname 
      DataField       =   "s_name"
      DataSource      =   "Adodc1"
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
      Top             =   1800
      Width           =   3015
   End
   Begin VB.TextBox txtbresult 
      DataField       =   "result"
      DataSource      =   "Adodc1"
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
   Begin VB.TextBox txtbemailid 
      DataField       =   "email-id"
      DataSource      =   "Adodc1"
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
      Top             =   4600
      Width           =   3015
   End
   Begin VB.TextBox txtbcontactno 
      DataField       =   "s_contactno"
      DataSource      =   "Adodc1"
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
      Top             =   3900
      Width           =   3015
   End
   Begin VB.TextBox txtbaddress 
      DataField       =   "s_address"
      DataSource      =   "Adodc1"
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
      Top             =   3200
      Width           =   3015
   End
   Begin VB.TextBox txtbrollno 
      DataField       =   "s_rollno"
      DataSource      =   "Adodc1"
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
      Top             =   2500
      Width           =   3015
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
      TabIndex        =   11
      Top             =   1800
      Width           =   1020
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
      TabIndex        =   10
      Top             =   4600
      Width           =   1215
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
      TabIndex        =   9
      Top             =   3900
      Width           =   1575
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
      TabIndex        =   8
      Top             =   3200
      Width           =   1260
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
      TabIndex        =   7
      Top             =   5300
      Width           =   990
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
      TabIndex        =   6
      Top             =   2500
      Width           =   960
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub btAddnew_Click()
Adodc1.Recordset.AddNew
txtbname.SetFocus
txtbcontactno.Text = ""
txtbrollno.Text = ""


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
        
     End If
End If
End Sub

Private Sub btedit_Click()
Adodc1.Recordset.EditMode

End Sub

Private Sub btgotoform1_Click()
Unload Me
Form1.Show
End Sub

Private Sub btupdate_Click()
Adodc1.Recordset.Update


End Sub

Private Sub btprevious_Click()

Adodc1.Recordset.MovePrevious
If Adodc1.Recordset.BOF Then
Adodc1.Recordset.MoveFirst
End If

End Sub
Private Sub btnext_Click()
Adodc1.Recordset.MoveNext
If Adodc1.Recordset.EOF Then
Adodc1.Recordset.MoveLast
End If

End Sub

Private Sub Command1_Click()
Adodc1.Refresh
MsgBox "Total no. of records in database are :" & Adodc1.Recordset.RecordCount
End Sub


Private Sub Command2_Click()
Unload Me
Form3.Show
End Sub


