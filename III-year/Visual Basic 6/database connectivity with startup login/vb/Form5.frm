VERSION 5.00
Begin VB.Form Form5 
   Caption         =   "Form5"
   ClientHeight    =   8160
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14190
   LinkTopic       =   "Form5"
   ScaleHeight     =   8160
   ScaleWidth      =   14190
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      Caption         =   "Form1"
      Height          =   615
      Left            =   0
      TabIndex        =   14
      Top             =   0
      Width           =   1695
   End
   Begin VB.Frame Frame2 
      Caption         =   "Frame2"
      Height          =   3735
      Left            =   15240
      TabIndex        =   7
      Top             =   720
      Width           =   4335
      Begin VB.TextBox Text4 
         Enabled         =   0   'False
         Height          =   495
         Left            =   1200
         TabIndex        =   11
         Top             =   2040
         Width           =   2895
      End
      Begin VB.TextBox Text3 
         Height          =   495
         Left            =   1200
         TabIndex        =   8
         Top             =   600
         Width           =   2895
      End
      Begin VB.Label Label2 
         Caption         =   "name is "
         Height          =   495
         Left            =   240
         TabIndex        =   10
         Top             =   2160
         Width           =   1575
      End
      Begin VB.Label Label1 
         Caption         =   "enter roll no"
         Height          =   735
         Left            =   120
         TabIndex        =   9
         Top             =   480
         Width           =   615
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Search"
      Height          =   615
      Left            =   15720
      TabIndex        =   6
      Top             =   4800
      Width           =   2535
   End
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   3735
      Left            =   8520
      TabIndex        =   1
      Top             =   600
      Width           =   5535
      Begin VB.TextBox Text2 
         Height          =   495
         Left            =   2760
         TabIndex        =   5
         Top             =   1080
         Width           =   2535
      End
      Begin VB.TextBox Text1 
         Height          =   495
         Left            =   2760
         TabIndex        =   4
         Top             =   480
         Width           =   2535
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Enter rollno"
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
         Left            =   480
         TabIndex        =   3
         Top             =   1200
         Width           =   1560
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Enter name"
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
         Left            =   480
         TabIndex        =   2
         Top             =   480
         Width           =   1500
      End
   End
   Begin VB.CommandButton btnext 
      Caption         =   "ADD new"
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
      Left            =   10920
      TabIndex        =   0
      Top             =   4680
      Width           =   1815
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "ADD new record : "
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
      Index           =   3
      Left            =   9720
      TabIndex        =   13
      Top             =   120
      Width           =   2460
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Search student by rollno in student_info table "
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
      Index           =   2
      Left            =   14040
      TabIndex        =   12
      Top             =   240
      Width           =   6150
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As New ADODB.Recordset


Private Sub btnext_Click()
On Error GoTo err


Call connection
Dim str As String
str = "insert into student_info(s_name,s_rollno) values (' " & Text1.Text & " '," & Val(Text2.Text) & ");"
Set rs = New ADODB.Recordset
rs.Open str, conn, adOpenDynamic, adLockBatchOptimistic
Text1.Text = ""
Text2.Text = ""

Exit Sub
err:
MsgBox err.Description


End Sub

Private Sub Command1_Click()
Call connection
Dim str As String
str = "select * from student_info where s_rollno=" & Text3.Text

Set rs = New ADODB.Recordset
rs.Open str, conn, adOpenDynamic, adLockBatchOptimistic

If rs.EOF Then
   MsgBox "no such record found"
   Else
   Text4.Text = ""
  Text4.Text = rs(1)
  
   End If
   Text3.Text = ""
    
End Sub

Private Sub Command3_Click()
Form1.Show

End Sub

Private Sub Form_Load()

'Call connection
'    Dim str As String
'    str = "select * from student_info "
'    Set rs = New ADODB.Recordset
'   rs.Open str, conn, adOpenDynamic, adLockOptimistic
'   If rs.EOF Then
'   MsgBox "no such record found"
'   Else
'   Set txtbaddress.DataSource = rs
' End If
'
End Sub

