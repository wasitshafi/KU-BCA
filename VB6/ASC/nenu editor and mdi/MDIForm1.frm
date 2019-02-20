VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "MDIForm1"
   ClientHeight    =   5730
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   14430
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu frm1 
      Caption         =   "form1"
      Begin VB.Menu shw 
         Caption         =   "&show"
      End
      Begin VB.Menu sep1 
         Caption         =   "-"
      End
      Begin VB.Menu hide 
         Caption         =   "&hide"
      End
   End
   Begin VB.Menu frm2 
      Caption         =   "form2"
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
