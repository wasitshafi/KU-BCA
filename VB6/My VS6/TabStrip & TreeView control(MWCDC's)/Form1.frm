VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00000080&
   Caption         =   "Form1"
   ClientHeight    =   8880
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13305
   LinkTopic       =   "Form1"
   ScaleHeight     =   8880
   ScaleWidth      =   13305
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin MSComctlLib.TabStrip TabStrip1 
      Height          =   4095
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   7223
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   2
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Amar Singh College"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab2 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Womens College Nawakadal "
            ImageVarType    =   2
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.TreeView tv1 
      Height          =   2415
      Left            =   8640
      TabIndex        =   1
      Top             =   720
      Width           =   5055
      _ExtentX        =   8916
      _ExtentY        =   4260
      _Version        =   393217
      Style           =   7
      Appearance      =   1
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Activate()
tv1.ZOrder 0 ' at the top
displayEmployee "Amar Singh College"
TabStrip1.Left = 0
TabStrip1.Top = 0
TabStrip1.Width = Form1.Width
TabStrip1.Height = 6000

tv1.Left = 50
tv1.Top = 400
tv1.Width = TabStrip1.Width - 400
tv1.Height = 5000


End Sub

Public Sub displayEmployee(scollege As String)
Dim tempnode As Node
Dim ncounter As Integer
Dim stemp As String
tv1.Nodes.Clear

Set tempnode = tv1.Nodes.Add(, , "C", "College")
Set tempnode = tv1.Nodes.Add("C", tvwChild, "A", "Adminstration")
Set tempnode = tv1.Nodes.Add("C", tvwChild, "BCA", "Computer Application")
Set tempnode = tv1.Nodes.Add("C", tvwChild, "MATH", "Dept. of Mathematics")

If scollege = "Amar Singh College" Then

Open apppath & "G:\BCA\3rd year\MY VB FILES\TabStrip & TreeView control(MWCDC's)\ascollege.txt" For Input As #1
Else
Open apppath & "G:\BCA\3rd year\MY VB FILES\TabStrip & TreeView control(MWCDC's)\spcollege.txt" For Input As #1
End If

For ncounter = 1 To 5
Line Input #1, stemp
Set tempnode = tv1.Nodes.Add("A", tvwChild, , stemp)
Next ncounter
tempnode.EnsureVisible

For ncounter = 1 To 5
Line Input #1, stemp
Set tempnode = tv1.Nodes.Add("BCA", tvwChild, , stemp)
Next ncounter
tempnode.EnsureVisible

For ncounter = 1 To 5
Line Input #1, stemp
Set tempnode = tv1.Nodes.Add("MATH", tvwChild, , stemp)
Next ncounter
tempnode.EnsureVisible

Close #1
tv1.ZOrder 0




End Sub

Private Sub TabStrip1_Click()
Dim ntemp As Integer
ntemp = TabStrip1.SelectedItem.Index
displayEmployee TabStrip1.Tabs(ntemp).Caption

End Sub
