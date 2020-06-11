VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7965
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13965
   LinkTopic       =   "Form1"
   ScaleHeight     =   7965
   ScaleWidth      =   13965
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      Caption         =   "Enter LowerBound && UpperBound  First"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   9120
      TabIndex        =   12
      Top             =   6480
      Width           =   2895
   End
   Begin VB.Frame Frame2 
      Caption         =   "Fixed Sized Arrays"
      Enabled         =   0   'False
      Height          =   5775
      Left            =   6600
      TabIndex        =   9
      Top             =   480
      Width           =   5895
      Begin VB.TextBox Text2 
         Height          =   495
         Left            =   1800
         TabIndex        =   4
         Top             =   960
         Width           =   3615
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Save"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   1320
         TabIndex        =   5
         Top             =   2640
         Width           =   2055
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Show Details"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   3600
         TabIndex        =   6
         Top             =   2640
         Width           =   2055
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Name : "
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   360
         TabIndex        =   11
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Note : Array Has No Upper Bound "
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   120
         TabIndex        =   10
         Top             =   3960
         Width           =   3870
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Fixed Sized Arrays"
      Height          =   5775
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   5895
      Begin VB.CommandButton show1 
         Caption         =   "Show Details"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   3480
         TabIndex        =   3
         Top             =   2640
         Width           =   2055
      End
      Begin VB.CommandButton save1 
         Caption         =   "Save"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   1320
         TabIndex        =   2
         Top             =   2640
         Width           =   2055
      End
      Begin VB.TextBox Text1 
         Height          =   495
         Left            =   1800
         TabIndex        =   1
         Top             =   960
         Width           =   3615
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Note : Array   Upper Bound is : 5 "
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   120
         TabIndex        =   8
         Top             =   3960
         Width           =   3780
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Name : "
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   360
         TabIndex        =   7
         Top             =   840
         Width           =   1095
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim farr(0 To 4) As String
Dim varr() As String
Dim i  As Integer
Dim lb As Integer
Dim ub As Integer
Dim temp As Integer




Private Sub Command1_Click()
Dim i As Integer
Dim details As String
If (temp = 0) Then
MsgBox "No data is entered yet...!", vbCritical, "Variable Sized Arrays"
Text2.SetFocus

Else

For i = temp To ub
details = details & "varr(" & i + 1 & ") = " & varr(i) & vbCrLf
Next i
MsgBox details

End If




End Sub

Private Sub Command2_Click()
On Error GoTo err
If lb = ub + 1 Then
MsgBox "Array UpperBound has Reached"
Exit Sub
End If




If Trim(Text2.Text) = "" Then ' if only spaces
MsgBox "Please Enter Name. ", vbInformation, "Fixed Sized Arrays"
Else
varr(lb) = Trim(Text2.Text)
lb = lb + 1
Text2.Text = ""
Text2.SetFocus
End If
Exit Sub
err:
MsgBox " Error Description  : " & err.Description, vbCritical, "ERROR OCCURED"
End Sub

Private Sub Command3_Click()

On Error GoTo err:
lb = InputBox("Enter LowerBound")
ub = InputBox("Enter UpperBound")
ReDim varr(lb To ub)
Frame2.Enabled = True
Command3.Visible = False
temp = lb
Exit Sub
err:
MsgBox " Error Description  : " & err.Description, vbCritical, "ERROR OCCURED"

End Sub

Private Sub Form_Load()
i = 0
temp = 0

End Sub

Private Sub save1_Click()
On Error GoTo err

If Trim(Text1.Text) = "" Then ' if only spaces
MsgBox "Please Enter Name. ", vbInformation, "Fixed Sized Arrays"
Else
farr(i) = Trim(Text1.Text)
i = i + 1
Text1.Text = ""
Text1.SetFocus
End If
Exit Sub
err:
MsgBox " Error Description  : " & err.Description, vbCritical, "ERROR OCCURED"
End Sub

Private Sub show1_Click()
Dim i As Integer
For i = 0 To 4
MsgBox "farr(" & i + 1 & ") = " & farr(i)
Next i

End Sub
