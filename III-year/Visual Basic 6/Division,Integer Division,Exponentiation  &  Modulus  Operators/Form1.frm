VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7830
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14040
   LinkTopic       =   "Form1"
   ScaleHeight     =   7830
   ScaleWidth      =   14040
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame2 
      Caption         =   "Modulus operator"
      Height          =   3975
      Index           =   2
      Left            =   9240
      TabIndex        =   21
      Top             =   480
      Width           =   4335
      Begin VB.CommandButton Command4 
         Caption         =   "Show Result"
         Height          =   615
         Left            =   1920
         TabIndex        =   9
         Top             =   2280
         Width           =   1935
      End
      Begin VB.TextBox txtbdivident3 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1800
         TabIndex        =   8
         Top             =   1320
         Width           =   2295
      End
      Begin VB.TextBox txtbdivisor3 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1800
         TabIndex        =   7
         Top             =   840
         Width           =   2295
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Enter Divident : "
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   23
         Top             =   1320
         Width           =   1425
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Enter Divisor : "
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   22
         Top             =   840
         Width           =   1335
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Exponentiation"
      Height          =   3975
      Index           =   1
      Left            =   13800
      TabIndex        =   18
      Top             =   480
      Width           =   4335
      Begin VB.CommandButton Command3 
         Caption         =   "Show Result"
         Height          =   615
         Left            =   1920
         TabIndex        =   12
         Top             =   2280
         Width           =   1935
      End
      Begin VB.TextBox txtbraisepower 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1800
         TabIndex        =   11
         Top             =   1320
         Width           =   2295
      End
      Begin VB.TextBox txtbbase 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1800
         TabIndex        =   10
         Top             =   840
         Width           =   2295
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Enter RasePower  : "
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   20
         Top             =   1320
         Width           =   1635
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Enter Base : "
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   19
         Top             =   840
         Width           =   1110
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Integer Division"
      Height          =   3975
      Index           =   0
      Left            =   4680
      TabIndex        =   15
      Top             =   480
      Width           =   4335
      Begin VB.TextBox txtbdivisor2 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1800
         TabIndex        =   4
         Top             =   840
         Width           =   2295
      End
      Begin VB.TextBox txtbdivident2 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1800
         TabIndex        =   5
         Top             =   1320
         Width           =   2295
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Show Result"
         Height          =   615
         Left            =   1920
         TabIndex        =   6
         Top             =   2280
         Width           =   1935
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Enter Divisor : "
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   17
         Top             =   840
         Width           =   1335
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Enter Divident : "
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   16
         Top             =   1320
         Width           =   1425
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Division Operator"
      Height          =   3975
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   4335
      Begin VB.CommandButton Command1 
         Caption         =   "Show Result"
         Height          =   615
         Left            =   1920
         TabIndex        =   3
         Top             =   2280
         Width           =   1935
      End
      Begin VB.TextBox txtbdivident1 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1800
         TabIndex        =   2
         Top             =   1320
         Width           =   2295
      End
      Begin VB.TextBox txtbdivisor1 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1800
         TabIndex        =   1
         Top             =   840
         Width           =   2295
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Enter Divident : "
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   1320
         Width           =   1425
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Enter Divisor : "
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   13
         Top             =   840
         Width           =   1335
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error GoTo err
MsgBox txtbdivident1 & "/" & txtbdivisor1 & " = " & txtbdivident1 / txtbdivisor1 & "(Quo.)", vbInformation, "Division operator"
Exit Sub
err:
MsgBox "Error Description : " & err.Description, vbCritical, " ERROR OCCURED"
End Sub

Private Sub Command2_Click()
On Error GoTo err
MsgBox txtbdivident2 & "\" & txtbdivisor2 & " = " & txtbdivident2 \ txtbdivisor2 & "(Q Only Integer part)", vbInformation, "Integer Division operator"
err:
MsgBox "Error Description : " & err.Description, vbCritical, " ERROR OCCURED"
End Sub

Private Sub Command3_Click()
On Error GoTo err
MsgBox txtbbase & "^" & txtbraisepower & " = " & txtbbase ^ txtbraisepower, vbInformation, "Exponentiation operator"
err:
MsgBox "Error Description : " & err.Description, vbCritical, " ERROR OCCURED"
End Sub

Private Sub Command4_Click()
On Error GoTo err
MsgBox txtbdivident3 & "mod" & txtbdivisor3 & " = " & txtbdivident3 Mod txtbdivisor3 & "(Remainder Only)", vbInformation, "Integer Division operator"
err:
MsgBox "Error Description : " & err.Description, vbCritical, " ERROR OCCURED"
End Sub
