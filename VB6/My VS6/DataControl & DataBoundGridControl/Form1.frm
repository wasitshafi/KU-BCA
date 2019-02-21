VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7815
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13890
   LinkTopic       =   "Form1"
   ScaleHeight     =   7815
   ScaleWidth      =   13890
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin MSDBGrid.DBGrid DBGrid1 
      Bindings        =   "Form1.frx":0000
      Height          =   3855
      Left            =   120
      OleObjectBlob   =   "Form1.frx":0014
      TabIndex        =   31
      Top             =   120
      Width           =   7455
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Go"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   12960
      TabIndex        =   21
      Top             =   7800
      Width           =   1095
   End
   Begin VB.TextBox txtbquery 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00004080&
      Height          =   465
      Left            =   3120
      TabIndex        =   20
      Top             =   7800
      Width           =   9855
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Sort data by rollno"
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
      Left            =   2520
      TabIndex        =   19
      Top             =   6840
      Width           =   1815
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Sort data by age"
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
      Left            =   6600
      TabIndex        =   18
      Top             =   6840
      Width           =   1815
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Sort data by Name"
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
      Left            =   4560
      TabIndex        =   17
      Top             =   6840
      Width           =   1815
   End
   Begin VB.CheckBox chkrdo 
      Caption         =   "ReadOnly(user will be able to update database)"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   13080
      TabIndex        =   16
      Top             =   3840
      Width           =   7215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Close data"
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
      Left            =   16080
      TabIndex        =   15
      Top             =   5400
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Refresh Data"
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
      Left            =   14040
      TabIndex        =   14
      Top             =   5400
      Width           =   1815
   End
   Begin VB.CommandButton btupdate2 
      BackColor       =   &H00FFFFFF&
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
      Left            =   8160
      TabIndex        =   13
      Top             =   6120
      Width           =   1215
   End
   Begin VB.CommandButton bt_edit 
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
      Left            =   8040
      TabIndex        =   12
      Top             =   5400
      Width           =   1815
   End
   Begin VB.CommandButton btupdate 
      BackColor       =   &H00FFFFFF&
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
      Left            =   6240
      TabIndex        =   11
      Top             =   6120
      Width           =   1215
   End
   Begin VB.TextBox txtbname 
      DataField       =   "sname"
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
      Left            =   9540
      TabIndex        =   10
      Top             =   0
      Width           =   3015
   End
   Begin VB.TextBox txtbage 
      DataField       =   "sage"
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
      Left            =   9540
      TabIndex        =   9
      Top             =   2895
      Width           =   3015
   End
   Begin VB.TextBox txtbcontactno 
      DataField       =   "scontactno"
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
      Left            =   9540
      TabIndex        =   8
      Top             =   2100
      Width           =   3015
   End
   Begin VB.TextBox txtbaddress 
      DataField       =   "saddress"
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
      Left            =   9540
      TabIndex        =   7
      Top             =   1395
      Width           =   3015
   End
   Begin VB.TextBox txtbrollno 
      DataField       =   "srollno"
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
      Left            =   9540
      TabIndex        =   6
      Top             =   705
      Width           =   3015
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
      Left            =   2040
      TabIndex        =   5
      Top             =   5400
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
      Left            =   4020
      TabIndex        =   4
      Top             =   5400
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
      Left            =   6000
      TabIndex        =   3
      Top             =   5400
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
      Left            =   10080
      TabIndex        =   2
      Top             =   5400
      Width           =   1815
   End
   Begin VB.CommandButton btcount 
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
      Left            =   12060
      TabIndex        =   1
      Top             =   5400
      Width           =   1815
   End
   Begin VB.Data Data1 
      Connect         =   "Access"
      DatabaseName    =   "G:\BCA\3rd year\MY VB FILES\DataControl & DataBoundGridControl\student_management_system_converted_to_access97.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   495
      Left            =   9360
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "studentinformationtable"
      Top             =   3600
      Width           =   3255
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Re-connect data"
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
      Left            =   18120
      TabIndex        =   0
      Top             =   5400
      Width           =   1815
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "3. User can also perform some basic operation on grid by Right clicking at run time."
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
      Left            =   1080
      TabIndex        =   32
      Top             =   4920
      Width           =   10860
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   $"Form1.frx":0A03
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
      Left            =   1080
      TabIndex        =   30
      Top             =   4440
      Width           =   19035
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "s"
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
      Left            =   0
      TabIndex        =   29
      Top             =   4080
      Width           =   135
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Note : table name is 'studentinformationtable' "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000040&
      Height          =   390
      Left            =   3120
      TabIndex        =   28
      Top             =   8400
      Width           =   6165
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Enter Any SQL Query : "
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
      Left            =   0
      TabIndex        =   27
      Top             =   7800
      Width           =   3210
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
      Left            =   8040
      TabIndex        =   26
      Top             =   0
      Width           =   1020
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
      Left            =   8040
      TabIndex        =   25
      Top             =   2100
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
      Left            =   8040
      TabIndex        =   24
      Top             =   1395
      Width           =   1260
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Age : "
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
      Left            =   8040
      TabIndex        =   23
      Top             =   2895
      Width           =   765
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
      Left            =   8040
      TabIndex        =   22
      Top             =   705
      Width           =   960
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub bt_edit_Click()
On Error GoTo err

Data1.Recordset.Edit
bt_edit.Enabled = False
btupdate2.Enabled = True
Exit Sub
err:
MsgBox "Error Description : " & err.Description, vbCritical, "Error Occured"
Exit Sub

End Sub

Private Sub btAddnew_Click()
On Error GoTo err:
 
Data1.Recordset.AddNew

txtbrollno.Text = ""
txtbage.Text = ""
txtbname.SetFocus
btAddnew.Enabled = False
btupdate.Enabled = True
Exit Sub
err:
MsgBox "Error Description : " & err.Description, vbCritical, "Error Occured"
Exit Sub


End Sub


Private Sub btcount_Click()
On Error GoTo err
MsgBox "Total no. of records in database are :" & Data1.Recordset.RecordCount, vbInformation, "Data Control"
Exit Sub
err:
MsgBox "Error Description : " & err.Description, vbCritical, "Error Occured"
Exit Sub

End Sub

Private Sub btdelete_Click()
On Error GoTo err:
If Data1.Recordset.RecordCount = 0 Then
    MsgBox "No record found....", vbCritical, "Data Control"
  Else
   Data1.Recordset.Delete
   Data1.Refresh
  
    If Data1.Recordset.EOF Then '  if only one record is present the it will generate an error
     Data1.Recordset.MoveLast
     Data1.Refresh
    ElseIf Data1.Recordset.BOF Then
      Data1.Recordset.MoveFirst
      Data1.Refresh
     End If
End If
Exit Sub
err:
MsgBox "Error Description : " & err.Description, vbCritical, "Error Occured"
Exit Sub

End Sub

Private Sub btnext_Click()
On Error GoTo err:

 Data1.Recordset.MoveNext
 If Data1.Recordset.EOF Then
    Data1.Recordset.MoveLast
 End If
Exit Sub
err:
MsgBox "Error Description : " & err.Description, vbCritical, "Error Occured"
Exit Sub

End Sub

Private Sub btprevious_Click()
On Error GoTo err:

 Data1.Recordset.MovePrevious
  If Data1.Recordset.BOF Then
   Data1.Recordset.MoveFirst
  End If
Exit Sub
err:
MsgBox "Error Description : " & err.Description, vbCritical, "Error Occured"
Exit Sub

End Sub

Private Sub btupdate_Click()
On Error GoTo err:

Data1.Recordset.Update
btAddnew.Enabled = True
btupdate.Enabled = False

Exit Sub
err:
MsgBox "Error Description : " & err.Description, vbCritical, "Error Occured"
Exit Sub

End Sub

Private Sub chkrdo_Click()
If chkrdo.Value = 1 Then
Data1.ReadOnly = True
Data1.Refresh

Else
Data1.ReadOnly = False
Data1.Refresh

End If

End Sub

Private Sub Command1_Click()
On Error GoTo err
Data1.Refresh

Exit Sub
err:
MsgBox "Error Description : " & err.Description, vbCritical, "Error Occured"
Exit Sub


End Sub

Private Sub btupdate2_Click()

On Error GoTo err:
Data1.Recordset.Update
bt_edit.Enabled = True
btupdate2.Enabled = False

Exit Sub
err:
MsgBox "Error Description : " & err.Description, vbCritical, "Error Occured"
Exit Sub

End Sub

Private Sub Command3_Click()
Data1.RecordSource = "select * from studentinformationtable order by sname"
Data1.Refresh

End Sub

Private Sub Command4_Click()
Data1.RecordSource = "select * from studentinformationtable order by sage"
Data1.Refresh
End Sub

Private Sub Command5_Click()
Data1.RecordSource = "select * from studentinformationtable order by srollno"
Data1.Refresh
End Sub

Private Sub Command6_Click()
On Error GoTo err

Data1.RecordSource = txtbquery.Text
Data1.Refresh
Exit Sub

err:
MsgBox "Error Description : " & err.Description, vbCritical, "Error Occured"

End Sub

Private Sub Timer1_Timer()
Data1.Refresh

End Sub

Private Sub Command2_Click()
On Error GoTo err
Data1.Database.Close
Me.Refresh
Exit Sub

err:
MsgBox "Error Description : " & err.Description, vbCritical, "Error Occured"

End Sub

Private Sub Command7_Click()
Data1.DatabaseName = "G:\BCA\3rd year\MY VB FILES\DataControl  & FlexGrid Control\student_management_system_converted_to_access97.mdb"
Data1.RecordSource = "studentinformationtable"
Data1.Refresh

End Sub

Private Sub Data1_Error(DataErr As Integer, Response As Integer)
' if user try to edit rollno directly from bound control(textbox rollno) then this error event  is called
If DataErr = 3022 Then '  Dubulicate key error
MsgBox " Enter unique  student rollno ", vbInformation, "Primary Key Constraint Error"
txtbrollno.SetFocus
Response = 0
End If

End Sub

Private Sub Data1_Reposition()
Data1.Caption = "Record Number " & Data1.Recordset.AbsolutePosition + 1

End Sub

Private Sub Data1_Validate(Action As Integer, Save As Integer)
Dim ans

If Action = vbDataActionMoveLast Then

MsgBox "This is last record...", vbInformation
End If



End Sub

Private Sub DBGrid1_BeforeDelete(Cancel As Integer)
Dim res As Integer
res = MsgBox(" Do you want to delete this record ? ", vbYesNo)
If res = vbNo Then
Cancel = True
End If


End Sub


