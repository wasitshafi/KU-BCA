VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00404040&
   ClientHeight    =   9615
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   17805
   LinkTopic       =   "Form1"
   ScaleHeight     =   9615
   ScaleWidth      =   17805
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Frame frmitematindex 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Height          =   1815
      Left            =   14640
      TabIndex        =   13
      Top             =   2160
      Width           =   5415
      Begin VB.CommandButton btok_frmitematindex 
         Caption         =   "OK"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4320
         TabIndex        =   17
         Top             =   840
         Width           =   1215
      End
      Begin VB.CommandButton btcancel_frmitematindex 
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2760
         TabIndex        =   16
         Top             =   840
         Width           =   1215
      End
      Begin VB.TextBox txtbitemindex_frmitematindex 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   2760
         MaxLength       =   2
         TabIndex        =   15
         Top             =   0
         Width           =   2775
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Enter item index"
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
         Left            =   0
         TabIndex        =   14
         Top             =   0
         Width           =   2445
      End
   End
   Begin VB.Frame frmadditem 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Height          =   1815
      Left            =   8280
      TabIndex        =   2
      Top             =   2160
      Visible         =   0   'False
      Width           =   5895
      Begin VB.CommandButton btcancel_frmadd 
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2880
         TabIndex        =   6
         Top             =   1080
         Width           =   1215
      End
      Begin VB.CommandButton btok_frmadd 
         Caption         =   "OK"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4320
         TabIndex        =   5
         Top             =   1080
         Width           =   1215
      End
      Begin VB.TextBox txtbiname_frmadd 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   2880
         MaxLength       =   15
         TabIndex        =   4
         Top             =   120
         Width           =   2775
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Enter item name "
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
         Left            =   120
         TabIndex        =   3
         Top             =   120
         Width           =   2475
      End
   End
   Begin VB.Frame frmbuttons 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   735
      Left            =   7680
      TabIndex        =   1
      Top             =   7080
      Width           =   9375
      Begin VB.CommandButton btselectedindx_frmbuttons 
         Caption         =   "Selected index"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1680
         TabIndex        =   12
         Top             =   120
         Width           =   1575
      End
      Begin VB.CommandButton btremove_frmbuttons 
         Caption         =   "Remove selected"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   7200
         TabIndex        =   11
         Top             =   120
         Width           =   1695
      End
      Begin VB.CommandButton btitematindex_frmbuttons 
         Caption         =   "Item at index"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   5160
         TabIndex        =   9
         Top             =   120
         Width           =   1695
      End
      Begin VB.CommandButton btcancel_frmbuttons 
         Caption         =   "Count"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3600
         TabIndex        =   8
         Top             =   120
         Width           =   1215
      End
      Begin VB.CommandButton btadd_frmbuttons 
         Caption         =   "Add"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   7
         Top             =   120
         Width           =   1215
      End
   End
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   8880
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   600
      Width           =   3255
   End
   Begin VB.Label lblstatus 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "lblstatus  "
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
      Left            =   7680
      TabIndex        =   10
      Top             =   5520
      Width           =   1470
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub btadd_frmbuttons_Click()
frmadditem.Left = 8280
frmadditem.Top = 2160
frmitematindex.Visible = False
lblstatus.Visible = False
txtbiname_frmadd.Text = ""
frmbuttons.Enabled = False
frmadditem.Visible = True
txtbiname_frmadd.SetFocus
End Sub

Private Sub btcancel_frmadd_Click()
frmadditem.Visible = False
frmbuttons.Visible = True
frmbuttons.Enabled = True
lblstatus.Visible = False
End Sub

Private Sub btcancel_frmbuttons_Click()
frmitematindex.Visible = False

frmadditem.Visible = False
If (Combo1.ListCount = -1) Then
lblstatus.ForeColor = vbRed
lblstatus.Caption = "combo box is empty....."
lblstatus.Visible = True
Else
lblstatus.ForeColor = vbGreen
lblstatus.Caption = "Total no. of items are " & Combo1.ListCount
lblstatus.Visible = True
End If
End Sub



Private Sub btcancel_frmitematindex_Click()
frmitematindex.Visible = False
frmbuttons.Visible = True
frmbuttons.Enabled = True
lblstatus.Visible = False
End Sub

Private Sub btitematindex_frmbuttons_Click()
frmitematindex.Left = 8280
frmitematindex.Top = 2160
lblstatus.Visible = False
frmbuttons.Enabled = False
frmitematindex.Visible = True
lblstatus.Visible = False

End Sub

Private Sub btok_frmadd_Click()
If (txtbiname_frmadd.Text = "") Then
lblstatus.Visible = True
lblstatus.ForeColor = vbRed
lblstatus.Caption = "Please enter item name....."
Else
Combo1.AddItem (txtbiname_frmadd.Text)
lblstatus.ForeColor = vbGreen
lblstatus.Visible = True
lblstatus.Caption = "Item is added into combo box"
frmadditem.Visible = False
frmbuttons.Enabled = True
End If
End Sub

Private Sub btok_frmitematindex_Click()
If (txtbiname_frmadd.Text = "") Then
lblstatus.Visible = True
lblstatus.ForeColor = vbRed
lblstatus.Caption = "Please enter item index....."
Else
    If (Val(txtbitemindex_frmitematindex.Text) > Combo1.ListCount) Then
    lblstatus.Visible = True
    lblstatus.ForeColor = vbRed
    lblstatus.Caption = "invalid position.....(HINT:MAX IDX = " & Combo1.ListCount & " .)"
    Else
    lblstatus.ForeColor = vbGreen
    lblstatus.Visible = True
    lblstatus.Caption = "Item at index " & txtbitemindex_frmitematindex.Text & " is  " & Combo1.List(Val(txtbitemindex_frmitematindex.Text - 1))
    frmitematindex.Visible = False
    frmbuttons.Enabled = True
    End If
End If

End Sub

Private Sub btremove_frmbuttons_Click()
frmitematindex.Visible = False

frmadditem.Visible = False
If (Combo1.ListCount = 0) Then
 lblstatus.Visible = True
 lblstatus.ForeColor = vbRed
 lblstatus.Caption = "Combo box empty...."
Else
        If (Combo1.ListIndex = -1) Then
        lblstatus.Visible = True
        lblstatus.ForeColor = vbRed
        lblstatus.Caption = "Can't remove ,Please select an item ....."
        Else
        Combo1.RemoveItem (Combo1.ListIndex)
        lblstatus.ForeColor = vbGreen
        lblstatus.Visible = True
        lblstatus.Caption = "Item is removed from combo box"
        End If

End If
End Sub

Private Sub btselectedindx_frmbuttons_Click()
frmitematindex.Visible = False

frmadditem.Visible = False
If (Combo1.ListCount = 0) Then
 lblstatus.Visible = True
 lblstatus.ForeColor = vbRed
 lblstatus.Caption = "Combo box empty...."
Else
        If (Combo1.ListIndex = -1) Then
        lblstatus.Visible = True
        lblstatus.ForeColor = vbRed
        lblstatus.Caption = "Please select an item ....."
        Else
        lblstatus.ForeColor = vbGreen
        lblstatus.Visible = True
        lblstatus.Caption = "Selected item '" & Combo1.List(Combo1.ListIndex) & "' index is " & Combo1.ListIndex + 1
        End If
End If
End Sub

Private Sub Form_Load()
lblstatus.Visible = False
frmitematindex.Visible = False
frmadditem.Visible = False
End Sub

