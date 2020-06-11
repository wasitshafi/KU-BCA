VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4755
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   11370
   LinkTopic       =   "Form1"
   ScaleHeight     =   4755
   ScaleWidth      =   11370
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "save"
      Height          =   615
      Left            =   10080
      TabIndex        =   2
      Top             =   3000
      Width           =   975
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   960
      Top             =   1560
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "font"
      Height          =   735
      Left            =   10080
      TabIndex        =   1
      Top             =   4080
      Width           =   1215
   End
   Begin RichTextLib.RichTextBox rtb 
      Height          =   2775
      Left            =   360
      TabIndex        =   0
      Top             =   1560
      Width           =   8775
      _ExtentX        =   15478
      _ExtentY        =   4895
      _Version        =   393217
      TextRTF         =   $"Form1.frx":0000
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
CommonDialog1.ShowFont
rtb.SelFontName = CommonDialog1.FontName
rtb.SelFontSize = CommonDialog1.FontSize

End Sub

Private Sub Command2_Click()
rtb.SaveFile " fir", 1

End Sub
