VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00E0E0E0&
   ClientHeight    =   8370
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   17235
   LinkTopic       =   "Form1"
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   8370
   ScaleWidth      =   17235
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   16440
      Top             =   960
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   0  'None
      Height          =   2655
      Left            =   240
      TabIndex        =   2
      Top             =   7560
      Width           =   15015
      Begin VB.Label lbltemperature 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2640
         TabIndex        =   20
         Top             =   840
         Width           =   120
      End
      Begin VB.Label lbldate_frame3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1680
         TabIndex        =   19
         Top             =   1440
         Width           =   120
      End
      Begin VB.Label lbltime_frame3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1800
         TabIndex        =   18
         Top             =   2040
         Width           =   120
      End
      Begin VB.Label lblstate 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1680
         TabIndex        =   17
         Top             =   240
         Width           =   120
      End
      Begin VB.Label lbl4_frame3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Time :"
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   16
         Top             =   2040
         Width           =   945
      End
      Begin VB.Label lbl3_frame3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Date :"
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   15
         Top             =   1440
         Width           =   885
      End
      Begin VB.Label lbl2_frame3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Temperature :"
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   14
         Top             =   840
         Width           =   2115
      End
      Begin VB.Label lbl1_frame3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "State :"
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   13
         Top             =   240
         Width           =   975
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00E0E0E0&
      Height          =   3615
      Left            =   840
      TabIndex        =   1
      Top             =   3600
      Width           =   15015
      Begin VB.CommandButton button 
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   0
         Left            =   2160
         TabIndex        =   12
         Top             =   360
         Visible         =   0   'False
         Width           =   1695
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   0  'None
      Height          =   2775
      Left            =   5280
      TabIndex        =   0
      Top             =   600
      Width           =   8415
      Begin VB.CommandButton Command1 
         Caption         =   "ADD"
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3720
         TabIndex        =   8
         Top             =   2040
         Width           =   1455
      End
      Begin VB.ComboBox combobox1 
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         ItemData        =   "Form1.frx":0342
         Left            =   3720
         List            =   "Form1.frx":0388
         Sorted          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   7
         Top             =   1320
         Width           =   2775
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3720
         MaxLength       =   2
         TabIndex        =   4
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackColor       =   &H00E0E0E0&
         BackStyle       =   0  'Transparent
         Caption         =   "Select state "
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   540
         Left            =   480
         TabIndex        =   6
         Top             =   1320
         Width           =   1950
      End
      Begin VB.Label lbldegcel 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "°C "
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   4800
         TabIndex        =   5
         Top             =   360
         Width           =   375
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackColor       =   &H00E0E0E0&
         BackStyle       =   0  'Transparent
         Caption         =   "Enter temperature "
         BeginProperty Font 
            Name            =   "Segoe Print"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   540
         Left            =   480
         TabIndex        =   3
         Top             =   480
         Width           =   3180
      End
   End
   Begin VB.Label lbltime 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "DATE"
      BeginProperty Font 
         Name            =   "Arial Unicode MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   19080
      TabIndex        =   11
      Top             =   720
      Width           =   780
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial Unicode MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   14880
      TabIndex        =   10
      Top             =   720
      Width           =   75
   End
   Begin VB.Label lbldate 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "DATE"
      BeginProperty Font 
         Name            =   "Arial Unicode MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   19080
      TabIndex        =   9
      Top             =   240
      Width           =   780
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim btbrk As Integer
Dim coll As New Collection
Dim colldate As New Collection
Dim colltime As New Collection


Private Sub button_Click(Index As Integer)
Frame3.Visible = True
lblstate.Caption = button(Index).Caption
lbltemperature.Caption = coll(button(Index).Caption)
lbldate_frame3.Caption = colldate(button(Index).Caption)
lbltime_frame3.Caption = colltime(button(Index).Caption)

End Sub

Private Sub Command1_Click()
If Text1.Text = "" Or combobox1.ListIndex = -1 Then
    If Text1.Text = "" And combobox1.ListIndex = -1 Then
    MsgBox "Please enter TEMPERATURE and SELECT STATE.", vbCritical, "Error"
    Text1.SetFocus
    ElseIf Text1.Text = "" Then
    MsgBox "Please enter TEMPERATURE", vbCritical, "Error"
    Text1.SetFocus
    ElseIf combobox1.ListIndex = -1 Then
    MsgBox "Please select state", vbCritical, "Error"
    combobox1.SetFocus
    End If
Else

'
'
'Dim j As Integer
'Dim flag As Integer
'flag = 1
'
'For j = 1 To coll.Count
'    If coll(j) = coll(combobox1.List(combobox1.ListIndex)) Then
'        flag = 0
'    End If
'
'
'    Next
''
''If flag = 1 Then


        coll.Add Val(Text1.Text), combobox1.List(combobox1.ListIndex) ' inserting data in collection
        colldate.Add Date, combobox1.List(combobox1.ListIndex)
        colltime.Add Time, combobox1.List(combobox1.ListIndex)
        
        Dim i As Integer
        i = button.UBound
        Load button(i + 1)
        button(i + 1).Caption = combobox1.List(combobox1.ListIndex)
        button(i + 1).Visible = True
        
        If btbrk = 7 Then ' 6 buttons in a row
        button(i + 1).Top = button(i).Top + 1000
        button(i + 1).Left = button(1).Left + 400  '400 is spacing between buttons
        btbrk = 0
        Else
        
        button(i + 1).Top = button(i).Top
        button(i + 1).Left = button(i).Left + button(i).Width + 400 '400 is spacing between buttons
        End If
         
         If btbrk = 0 And button.Count > 2 Then  ' reducing the space(for between 2 buttons) for first colounm buttons
         button(i + 1).Left = button(i + 1).Left - 400
          
          End If
        i = i + 1
        btbrk = btbrk + 1
    
    
'    Else
'        MsgBox "Record for " & combobox1.List(combobox1.ListIndex) & " is already stored."
'    End If
'
End If
End Sub





Private Sub Form_Activate()
Frame1.Left = Form1.Width / 3
Frame2.Left = 1200
Frame3.Left = 800
Frame2.Top = Frame1.Top + Frame1.Height
Frame2.Width = Form1.Width - 2200
Frame3.Top = Frame2.Top + Frame2.Height
Frame3.Width = Frame2.Width
lbldate.Caption = ""
lbltime.Caption = ""
lbldate.Left = Form1.Width - 2500
lbltime.Left = lbldate.Left
lbldate.Top = 100
lbltime.Top = lbldate.Top + lbldate.Height
lbldate.Caption = Date
lbltime.Caption = Time
Frame3.Visible = False
btbrk = 0


button(0).Left = -1500 'removing first button out of frame






End Sub





Private Sub Text1_KeyPress(KeyAscii As Integer)
If Not ((KeyAscii >= 47 And KeyAscii <= 57) Or (KeyAscii = 8)) Then ' 8 for backspace
'MsgBox KeyAscii
KeyAscii = 0
End If
End Sub

Private Sub Timer1_Timer()
lbldate.Caption = Date
lbltime.Caption = Time
End Sub
