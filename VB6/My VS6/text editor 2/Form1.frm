VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6345
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   13800
   LinkTopic       =   "Form1"
   ScaleHeight     =   6345
   ScaleWidth      =   13800
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog cdb 
      Left            =   12840
      Top             =   480
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin RichTextLib.RichTextBox rtb 
      Height          =   2535
      Left            =   1080
      TabIndex        =   0
      Top             =   600
      Width           =   4935
      _ExtentX        =   8705
      _ExtentY        =   4471
      _Version        =   393217
      BackColor       =   16777215
      ScrollBars      =   3
      TextRTF         =   $"Form1.frx":0000
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Menu mnfile 
      Caption         =   "&File"
      Begin VB.Menu file_new 
         Caption         =   "&New"
         Shortcut        =   ^N
      End
      Begin VB.Menu file_open 
         Caption         =   "&Open"
         Shortcut        =   ^O
      End
      Begin VB.Menu file_save 
         Caption         =   "&Save"
         Shortcut        =   ^S
      End
      Begin VB.Menu file_saveas 
         Caption         =   "S&ave as "
      End
      Begin VB.Menu file_exit 
         Caption         =   "&Exit"
         Shortcut        =   ^E
      End
   End
   Begin VB.Menu mnedit 
      Caption         =   "&Edit"
      Begin VB.Menu edit_selectall 
         Caption         =   "&Select all"
         Enabled         =   0   'False
      End
      Begin VB.Menu edit_copy 
         Caption         =   "&Copy"
         Enabled         =   0   'False
         Shortcut        =   ^C
      End
      Begin VB.Menu edit_paste 
         Caption         =   "paste"
      End
      Begin VB.Menu edit_cut 
         Caption         =   "Cut"
         Enabled         =   0   'False
      End
      Begin VB.Menu edit_delselected 
         Caption         =   "Delete selected"
         Enabled         =   0   'False
      End
      Begin VB.Menu edit_delall 
         Caption         =   "Delete all"
         Enabled         =   0   'False
      End
   End
   Begin VB.Menu mnabout 
      Caption         =   "&About"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim flagsave As Integer
Dim flagchange As Integer
Dim flagsaved_or_not As Integer 'used for exit time whether the file is saved of not because the "change function" change the value of flagsave
 
Private Sub file_new_Click()
If flagchange = 0 And flagsave = 1 Then
  rtb.Text = ""
  flagsave = 0
  flagchange = 0
  flagsaved_or_not = 0
ElseIf flagchange = 1 Or flagesave = 0 Then
    Dim str As String
    str = MsgBox("Do you want to save changes ", vbYesNoCancel, notepad)
       If str = vbYes Then
           If flagsaved_or_not = 0 Then
             cdb.ShowSave                      'means file has not yet been saved
             rtb.SaveFile cdb.FileName, 1
                If cdb.FileName <> "" Then
                    rtb.Text = ""
                    flagsave = 0
                    flagchange = 0
                    flagsaved_or_not = 0
                End If
           Else
               rtb.SaveFile cdb.FileName, 1
        '  If cdb.FileName <> "" Then        'means file has been already saved
                rtb.Text = ""
                flagsave = 0
                flagchange = 0
                flagsaved_or_not = 0
           End If
        End If
      If str = vbNo Then             'for opening a new File
        rtb.Text = ""
       flagsave = 0
       flagchange = 0
       flagsaved_or_not = 0
      End If
End If
End Sub

Private Sub Form_Activate()
rtb.Left = 0
rtb.Top = 0
'rtb.Text = ""
Me.WindowState = 2
rtb.Width = Me.Width
rtb.Height = Me.Height
flagsave = 0
flagchange = 0
flagsaved_or_not = 0
End Sub

Private Sub edit_copy_Click()
 Clipboard.SetText rtb.SelText
End Sub

Private Sub edit_cut_Click()

Clipboard.SetText rtb.SelText
rtb.SelText = ""


End Sub

Private Sub edit_delall_Click()
rtb.Text = ""
End Sub

Private Sub edit_delselected_Click()
rtb.SelText = ""
End Sub

Private Sub edit_paste_Click()

 rtb.SelText = Clipboard.GetText

End Sub

Private Sub file_exit_Click()
If flagchange = 0 Then
Unload Me
Else
Dim str As String
str = MsgBox("Do you want to save changes ", vbYesNoCancel, notepad)
    If str = vbYes Then
     If flagsaved_or_not = 0 Then
     cdb.ShowSave
     rtb.SaveFile cdb.FileName, 1
     Unload Me
     Else
       rtb.SaveFile cdb.FileName, 1
       Unload Me
       End If
    End If
    If str = vbNo Then
     Unload Me
    End If
End If
End Sub

Private Sub file_open_Click()

If flagchange = 0 Then
cdb.ShowOpen
rtb.LoadFile cdb.FileName, 1
    If cdb.FileName <> "" Then
   ' rtb.Text = ""
    flagsave = 0
    flagchange = 0
    flagsaved_or_not = 0
    End If
Else
    Dim str As String
    str = MsgBox("Do you want to save changes ", vbYesNoCancel, notepad)
      If str = vbYes Then
         If flagsaved_or_not = 0 Then
            cdb.ShowSave
            rtb.SaveFile cdb.FileName, 1
              If cdb.FileName <> "" Then
                'rtb.Text = ""
                cdb.ShowOpen
                rtb.LoadFile cdb.FileName, 1
                flagsave = 0
                flagchange = 0
                flagsaved_or_not = 0
              End If
        Else
         rtb.SaveFile cdb.FileName, 1
         cdb.ShowOpen
         rtb.LoadFile cdb.FileName, 1
           If cdb.FileName <> "" Then
             'rtb.Text = ""
             flagsave = 0
             flagchange = 0
             flagsaved_or_not = 0
           End If
        End If
     End If
    If str = vbNo Then
       cdb.ShowOpen
       rtb.LoadFile cdb.FileName, 1
       If cdb.FileName <> "" Then
       ' rtb.Text = ""
        flagsave = 0
        flagchange = 0
        flagsaved_or_not = 0
        End If
     End If
End If

End Sub

Private Sub file_save_Click()
If flagsave = 0 Then
cdb.ShowSave
rtb.SaveFile cdb.FileName, 1
        If cdb.FileName <> "" Then    'if user click the cancel button
        flagsave = 1
        flagchange = 0
        flagsaved_or_not = 1
        End If
Else
rtb.SaveFile cdb.FileName, 1
flagchange = 0
End If
End Sub

Private Sub file_saveas_Click()
cdb.ShowSave
rtb.SaveFile cdb.FileName, 1
 If cdb.FileName <> "" Then    'if user click the cancel button
 flagsave = 1
 flagchange = 0
 flagsaved_or_not = 1
End If
End Sub


Private Sub mnabout_Click()
frmAbout.Show

End Sub

Private Sub mnedit_Click()
If rtb.SelText <> "" And rtb.Text <> "" Then
    edit_copy.Enabled = True
    edit_cut.Enabled = True
    edit_delselected.Enabled = True
    Else
    edit_copy.Enabled = False
    edit_cut.Enabled = False
    edit_delselected.Enabled = False
End If
End Sub

Private Sub rtb_Change()
If rtb.Text = "" Then
edit_selectall.Enabled = False
edit_copy.Enabled = False
edit_cut.Enabled = False
edit_delall.Enabled = False
edit_delselected.Enabled = False
Else
edit_selectall.Enabled = True
edit_delall.Enabled = True
End If
flagchange = 1
End Sub
