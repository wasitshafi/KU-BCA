VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8880
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   14310
   LinkTopic       =   "Form1"
   ScaleHeight     =   8880
   ScaleWidth      =   14310
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Menu mnufile 
      Caption         =   "File"
      Begin VB.Menu mnunew 
         Caption         =   "New"
      End
      Begin VB.Menu mnuopen 
         Caption         =   "Open"
      End
      Begin VB.Menu mnusave 
         Caption         =   "Save"
      End
      Begin VB.Menu mnusaveas 
         Caption         =   "Save as"
      End
      Begin VB.Menu mnuprint 
         Caption         =   "Print"
      End
      Begin VB.Menu mnuprintpreview 
         Caption         =   "Print Preview"
      End
      Begin VB.Menu mnupsetup 
         Caption         =   "Page Setup"
      End
      Begin VB.Menu mnuhelp 
         Caption         =   "Help"
      End
      Begin VB.Menu mnuexit 
         Caption         =   "Exit"
      End
      Begin VB.Menu mnudash2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuviewlessormore 
         Caption         =   "View Less"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub mnuviewlessormore_Click()
If mnuviewlessormore.Caption = "View Less" Then
mnuviewlessormore.Caption = "View More"
Else
mnuviewlessormore.Caption = "View Less"
End If
mnuprint.Visible = Not mnuprint.Visible
mnuprintpreview.Visible = Not mnuprintpreview.Visible
mnupsetup.Visible = Not mnupsetup.Visible
mnuhelp.Visible = Not mnuhelp.Visible
mnuexit.Visible = Not mnuexit.Visible


End Sub
