VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7755
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14070
   LinkTopic       =   "Form1"
   ScaleHeight     =   7755
   ScaleWidth      =   14070
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Show forms and hide them"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   6960
      TabIndex        =   0
      Top             =   2760
      Width           =   2415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Form2.Show ' suppose all from are opened from some reason before
Form3.Show
Form4.Show
Form5.Show



Form2.Hide ' they also hiden for
Form3.Hide
Form4.Hide
Form5.Hide




End Sub


Private Sub Form_Unload(Cancel As Integer)
Dim i As Integer
For i = Forms.Count - 1 To 0 Step -1
Unload Forms(i)
Next
End Sub
