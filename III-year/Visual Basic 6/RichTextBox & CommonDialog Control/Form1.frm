VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9030
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   14190
   LinkTopic       =   "Form1"
   ScaleHeight     =   9030
   ScaleWidth      =   14190
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin RichTextLib.RichTextBox rtb1 
      Height          =   4695
      Left            =   720
      TabIndex        =   0
      Top             =   720
      Width           =   11655
      _ExtentX        =   20558
      _ExtentY        =   8281
      _Version        =   393217
      TextRTF         =   $"Form1.frx":0000
   End
   Begin MSComDlg.CommonDialog cd1 
      Left            =   1080
      Top             =   6120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Menu open 
      Caption         =   "Open"
   End
   Begin VB.Menu save 
      Caption         =   "Save"
   End
   Begin VB.Menu font 
      Caption         =   "Font"
   End
   Begin VB.Menu color 
      Caption         =   "Color"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub color_Click()
On Error GoTo errc
cd1.CancelError = True
If rtb1.SelText <> "" Then
cd1.ShowColor
rtb1.SelColor = cd1.color

End If
errc: 'user click cancel
Exit Sub
End Sub

Private Sub font_Click()
On Error GoTo errf

cd1.CancelError = True

If rtb1.SelText <> "" Then
cd1.ShowFont
rtb1.SelFontName = cd1.FontName
rtb1.SelFontSize = cd1.FontSize

rtb1.SelBold = cd1.FontBold
rtb1.SelItalic = cd1.FontItalic
rtb1.SelUnderline = cd1.FontUnderline
rtb1.SelStrikeThru = cd1.FontStrikethru
End If

errf:
'user click cancel
Exit Sub
End Sub

Private Sub Form_Activate()
rtb1.Left = 0
rtb1.Top = 0

rtb1.Width = Form1.Width
rtb1.Height = Form1.Height

 
End Sub

Private Sub open_Click()
cd1.ShowOpen
rtb1.LoadFile cd1.FileName, 1
End Sub

Private Sub save_Click()
cd1.ShowSave
rtb1.SaveFile cd1.FileName, 1 ' 1 for save document as text fromat

End Sub
