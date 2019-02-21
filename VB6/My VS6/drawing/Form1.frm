VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8655
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15600
   LinkTopic       =   "Form1"
   ScaleHeight     =   8655
   ScaleWidth      =   15600
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame5 
      Caption         =   "Drawtext"
      Height          =   4935
      Left            =   3120
      TabIndex        =   84
      Top             =   2280
      Width           =   11415
      Begin VB.CommandButton Command7 
         Caption         =   "DRAW TEXT"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   3240
         TabIndex        =   98
         Top             =   3720
         Width           =   2175
      End
      Begin VB.TextBox Text4 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   2400
         MaxLength       =   4
         TabIndex        =   97
         Top             =   2280
         Width           =   1335
      End
      Begin VB.TextBox yf5 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   5880
         MaxLength       =   4
         TabIndex        =   96
         Top             =   1200
         Width           =   1335
      End
      Begin VB.TextBox Text2 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   5880
         MaxLength       =   4
         TabIndex        =   95
         Top             =   2280
         Width           =   1335
      End
      Begin VB.TextBox xf5 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   2400
         MaxLength       =   4
         TabIndex        =   94
         Top             =   1200
         Width           =   1335
      End
      Begin VB.OptionButton Option8 
         Caption         =   "SOLID"
         Height          =   255
         Left            =   8400
         TabIndex        =   93
         Top             =   1200
         Width           =   1335
      End
      Begin VB.OptionButton Option7 
         Caption         =   "TRANSPARENT"
         Height          =   255
         Left            =   8400
         TabIndex        =   92
         Top             =   1560
         Value           =   -1  'True
         Width           =   1695
      End
      Begin VB.OptionButton Option6 
         Caption         =   "DIAGNOL CROSS"
         Height          =   255
         Left            =   8400
         TabIndex        =   91
         Top             =   3720
         Width           =   1935
      End
      Begin VB.OptionButton Option5 
         Caption         =   "DOWNWARD DIAGNOL"
         Height          =   255
         Left            =   8400
         TabIndex        =   90
         Top             =   3000
         Width           =   2535
      End
      Begin VB.OptionButton Option4 
         Caption         =   "HORIZANTAL LINE"
         Height          =   255
         Left            =   8400
         TabIndex        =   89
         Top             =   1920
         Width           =   1815
      End
      Begin VB.OptionButton Option3 
         Caption         =   "UPWARD DIAGNOL"
         Height          =   255
         Left            =   8400
         TabIndex        =   88
         Top             =   2640
         Width           =   1935
      End
      Begin VB.OptionButton Option2 
         Caption         =   "VERTICAL LINE"
         Height          =   255
         Left            =   8400
         TabIndex        =   87
         Top             =   2280
         Width           =   1935
      End
      Begin VB.OptionButton Option1 
         Caption         =   "CROSS"
         Height          =   255
         Left            =   8400
         TabIndex        =   86
         Top             =   3360
         Width           =   1335
      End
      Begin VB.CheckBox Check1 
         Caption         =   "FILL BOX"
         Height          =   255
         Left            =   720
         TabIndex        =   85
         Top             =   3600
         Width           =   1215
      End
      Begin VB.Label Label42 
         AutoSize        =   -1  'True
         Caption         =   "optional"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   7320
         TabIndex        =   109
         Top             =   1560
         Width           =   465
      End
      Begin VB.Label Label41 
         AutoSize        =   -1  'True
         Caption         =   "optional"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   3840
         TabIndex        =   108
         Top             =   1560
         Width           =   465
      End
      Begin VB.Label Label40 
         AutoSize        =   -1  'True
         BackColor       =   &H80000016&
         Caption         =   "   "
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
         Left            =   6000
         TabIndex        =   107
         Top             =   3000
         Width           =   270
      End
      Begin VB.Label Label39 
         AutoSize        =   -1  'True
         BackColor       =   &H80000016&
         Caption         =   "  "
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
         Left            =   2400
         TabIndex        =   106
         Top             =   3000
         Width           =   180
      End
      Begin VB.Label Label38 
         Caption         =   "MAX VAL :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4200
         TabIndex        =   105
         Top             =   3000
         Width           =   1815
      End
      Begin VB.Label Label37 
         Caption         =   "MAX VAL :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   600
         TabIndex        =   104
         Top             =   3000
         Width           =   1815
      End
      Begin VB.Label Label36 
         Caption         =   "Enter Y"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4200
         TabIndex        =   103
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label Label35 
         Caption         =   "Enter X 2"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   600
         TabIndex        =   102
         Top             =   2280
         Width           =   1455
      End
      Begin VB.Label Label34 
         Caption         =   "Enter Y 2"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4200
         TabIndex        =   101
         Top             =   2280
         Width           =   1455
      End
      Begin VB.Label Label33 
         Caption         =   "Enter X"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   600
         TabIndex        =   100
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label Label32 
         Caption         =   "Select Fill Style"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   7200
         TabIndex        =   99
         Top             =   480
         Width           =   2415
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Draw circle"
      Height          =   1695
      Left            =   8280
      TabIndex        =   48
      Top             =   1200
      Visible         =   0   'False
      Width           =   2295
      Begin VB.TextBox txtbendptf4 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   4320
         MaxLength       =   4
         TabIndex        =   78
         ToolTipText     =   "Use -ne value to create pie slices & +ve value to create arcs."
         Top             =   3960
         Width           =   1335
      End
      Begin VB.TextBox txtbaspectf4 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   4320
         MaxLength       =   4
         TabIndex        =   77
         ToolTipText     =   "Use value < 1 to stretch the circle lengthwise & Use value >1 to stretch it heightwise"
         Top             =   4800
         Width           =   1335
      End
      Begin VB.CommandButton Command5 
         Caption         =   "DRAW CIRCLE"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   4440
         TabIndex        =   61
         Top             =   5400
         Width           =   2415
      End
      Begin VB.TextBox cradiusf4 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   3480
         MaxLength       =   4
         TabIndex        =   60
         Top             =   2400
         Width           =   1335
      End
      Begin VB.TextBox yf4 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   5880
         MaxLength       =   4
         TabIndex        =   59
         Top             =   1200
         Width           =   1335
      End
      Begin VB.TextBox txtbstptf4 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   4320
         MaxLength       =   4
         TabIndex        =   58
         ToolTipText     =   "Use -ne value to create pie slices & +ve value to create arcs."
         Top             =   3120
         Width           =   1335
      End
      Begin VB.TextBox xf4 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   2400
         MaxLength       =   4
         TabIndex        =   57
         Top             =   1200
         Width           =   1335
      End
      Begin VB.OptionButton op0f4 
         Caption         =   "SOLID"
         Height          =   255
         Left            =   8400
         TabIndex        =   56
         Top             =   1200
         Width           =   1335
      End
      Begin VB.OptionButton op1f4 
         Caption         =   "TRANSPARENT"
         Height          =   255
         Left            =   8400
         TabIndex        =   55
         Top             =   1560
         Value           =   -1  'True
         Width           =   1695
      End
      Begin VB.OptionButton op7f4 
         Caption         =   "DIAGNOL CROSS"
         Height          =   255
         Left            =   8400
         TabIndex        =   54
         Top             =   3720
         Width           =   1935
      End
      Begin VB.OptionButton op5f4 
         Caption         =   "DOWNWARD DIAGNOL"
         Height          =   255
         Left            =   8400
         TabIndex        =   53
         Top             =   3000
         Width           =   2535
      End
      Begin VB.OptionButton op2f4 
         Caption         =   "HORIZANTAL LINE"
         Height          =   255
         Left            =   8400
         TabIndex        =   52
         Top             =   1920
         Width           =   1815
      End
      Begin VB.OptionButton op4f4 
         Caption         =   "UPWARD DIAGNOL"
         Height          =   255
         Left            =   8400
         TabIndex        =   51
         Top             =   2640
         Width           =   1935
      End
      Begin VB.OptionButton op3f4 
         Caption         =   "VERTICAL LINE"
         Height          =   255
         Left            =   8400
         TabIndex        =   50
         Top             =   2280
         Width           =   1935
      End
      Begin VB.OptionButton op6f4 
         Caption         =   "CROSS"
         Height          =   255
         Left            =   8400
         TabIndex        =   49
         Top             =   3360
         Width           =   1335
      End
      Begin VB.Label Label31 
         AutoSize        =   -1  'True
         Caption         =   " Use 1 is default value (perfect circle) or less or greater value then1"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   5760
         TabIndex        =   81
         Top             =   5040
         Width           =   4185
      End
      Begin VB.Label Label30 
         AutoSize        =   -1  'True
         Caption         =   "From -2 PI(-6.28)  to 2 PI (+6.28) "
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   5760
         TabIndex        =   80
         Top             =   4320
         Width           =   2145
      End
      Begin VB.Label Label29 
         AutoSize        =   -1  'True
         Caption         =   "From -2 PI(-6.28)  to 2 PI (+6.28) "
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   5880
         TabIndex        =   79
         Top             =   3480
         Width           =   2145
      End
      Begin VB.Label Label26 
         Caption         =   "ENTER END POINT"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   360
         TabIndex        =   76
         Top             =   4080
         Width           =   3495
      End
      Begin VB.Label Label25 
         Caption         =   "ENTER ASPECT RATIO "
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   120
         TabIndex        =   75
         Top             =   4920
         Width           =   3975
      End
      Begin VB.Label Label21 
         Caption         =   "ENTER RADIUS"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   480
         TabIndex        =   73
         Top             =   2400
         Width           =   2895
      End
      Begin VB.Label Label28 
         AutoSize        =   -1  'True
         Caption         =   "optional"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   7320
         TabIndex        =   71
         Top             =   1560
         Width           =   465
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "optional"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   3840
         TabIndex        =   70
         Top             =   1560
         Width           =   465
      End
      Begin VB.Label lblmaxyf4 
         AutoSize        =   -1  'True
         BackColor       =   &H80000016&
         Caption         =   "   "
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
         Left            =   6120
         TabIndex        =   69
         Top             =   1920
         Width           =   270
      End
      Begin VB.Label lblmaxxf4 
         AutoSize        =   -1  'True
         BackColor       =   &H80000016&
         Caption         =   "  "
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
         Left            =   2880
         TabIndex        =   68
         Top             =   1800
         Width           =   180
      End
      Begin VB.Label Label24 
         Caption         =   "MAX VAL :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4320
         TabIndex        =   67
         Top             =   1920
         Width           =   1815
      End
      Begin VB.Label Label23 
         Caption         =   "MAX VAL :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   480
         TabIndex        =   66
         Top             =   1800
         Width           =   1815
      End
      Begin VB.Label Label22 
         Caption         =   "ENTER Y"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4200
         TabIndex        =   65
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label Label20 
         Caption         =   "ENTER START POINT"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   480
         TabIndex        =   64
         Top             =   3120
         Width           =   3495
      End
      Begin VB.Label Label19 
         Caption         =   "ENTER X"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   600
         TabIndex        =   63
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label Label12 
         Caption         =   "Select Fill Style"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   7200
         TabIndex        =   62
         Top             =   480
         Width           =   2415
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Drawbox"
      Height          =   1575
      Left            =   5640
      TabIndex        =   23
      Top             =   1320
      Width           =   2295
      Begin VB.CheckBox chkfill 
         Caption         =   "FILL BOX"
         Height          =   255
         Left            =   720
         TabIndex        =   74
         Top             =   3600
         Width           =   1215
      End
      Begin VB.OptionButton op6 
         Caption         =   "CROSS"
         Height          =   255
         Left            =   8400
         TabIndex        =   47
         Top             =   3360
         Width           =   1335
      End
      Begin VB.OptionButton op3 
         Caption         =   "VERTICAL LINE"
         Height          =   255
         Left            =   8400
         TabIndex        =   46
         Top             =   2280
         Width           =   1935
      End
      Begin VB.OptionButton op4 
         Caption         =   "UPWARD DIAGNOL"
         Height          =   255
         Left            =   8400
         TabIndex        =   45
         Top             =   2640
         Width           =   1935
      End
      Begin VB.OptionButton op2 
         Caption         =   "HORIZANTAL LINE"
         Height          =   255
         Left            =   8400
         TabIndex        =   44
         Top             =   1920
         Width           =   1815
      End
      Begin VB.OptionButton op5 
         Caption         =   "DOWNWARD DIAGNOL"
         Height          =   255
         Left            =   8400
         TabIndex        =   43
         Top             =   3000
         Width           =   2535
      End
      Begin VB.OptionButton op7 
         Caption         =   "DIAGNOL CROSS"
         Height          =   255
         Left            =   8400
         TabIndex        =   42
         Top             =   3720
         Width           =   1935
      End
      Begin VB.OptionButton op1 
         Caption         =   "TRANSPARENT"
         Height          =   255
         Left            =   8400
         TabIndex        =   41
         Top             =   1560
         Value           =   -1  'True
         Width           =   1695
      End
      Begin VB.OptionButton op0 
         Caption         =   "SOLID"
         Height          =   255
         Left            =   8400
         TabIndex        =   40
         Top             =   1200
         Width           =   1335
      End
      Begin VB.TextBox x1f3 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   2400
         MaxLength       =   4
         TabIndex        =   28
         Top             =   1200
         Width           =   1335
      End
      Begin VB.TextBox y2f3 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   5880
         MaxLength       =   4
         TabIndex        =   27
         Top             =   2280
         Width           =   1335
      End
      Begin VB.TextBox y1f3 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   5880
         MaxLength       =   4
         TabIndex        =   26
         Top             =   1200
         Width           =   1335
      End
      Begin VB.TextBox x2f3 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   2400
         MaxLength       =   4
         TabIndex        =   25
         Top             =   2280
         Width           =   1335
      End
      Begin VB.CommandButton drawbox 
         Caption         =   "DRAW BOX"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   3240
         TabIndex        =   24
         Top             =   3720
         Width           =   2175
      End
      Begin VB.Label Label11 
         Caption         =   "Select Fill Style"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   7200
         TabIndex        =   39
         Top             =   480
         Width           =   2415
      End
      Begin VB.Label Label18 
         Caption         =   "Enter X 1"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   600
         TabIndex        =   38
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label Label17 
         Caption         =   "Enter Y 2"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4200
         TabIndex        =   37
         Top             =   2280
         Width           =   1455
      End
      Begin VB.Label Label16 
         Caption         =   "Enter X 2"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   600
         TabIndex        =   36
         Top             =   2280
         Width           =   1455
      End
      Begin VB.Label Label15 
         Caption         =   "Enter Y 1"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4200
         TabIndex        =   35
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label Label14 
         Caption         =   "MAX VAL :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   600
         TabIndex        =   34
         Top             =   3000
         Width           =   1815
      End
      Begin VB.Label Label13 
         Caption         =   "MAX VAL :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4200
         TabIndex        =   33
         Top             =   3000
         Width           =   1815
      End
      Begin VB.Label maxxf3 
         AutoSize        =   -1  'True
         BackColor       =   &H80000016&
         Caption         =   "  "
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
         Left            =   2400
         TabIndex        =   32
         Top             =   3000
         Width           =   180
      End
      Begin VB.Label maxyf3 
         AutoSize        =   -1  'True
         BackColor       =   &H80000016&
         Caption         =   "   "
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
         Left            =   6000
         TabIndex        =   31
         Top             =   3000
         Width           =   270
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "optional"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   3840
         TabIndex        =   30
         Top             =   1560
         Width           =   465
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "optional"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   7320
         TabIndex        =   29
         Top             =   1560
         Width           =   465
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Draw line"
      Height          =   1695
      Left            =   2880
      TabIndex        =   4
      Top             =   1320
      Width           =   2415
      Begin VB.CommandButton bgo 
         Caption         =   "DRAW"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   3240
         TabIndex        =   13
         Top             =   3720
         Width           =   2175
      End
      Begin VB.TextBox x2 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   2400
         MaxLength       =   4
         TabIndex        =   12
         Top             =   2280
         Width           =   1335
      End
      Begin VB.TextBox y1 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   5880
         MaxLength       =   4
         TabIndex        =   11
         Top             =   1200
         Width           =   1335
      End
      Begin VB.TextBox y2 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   5880
         MaxLength       =   4
         TabIndex        =   10
         Top             =   2280
         Width           =   1335
      End
      Begin VB.TextBox x1 
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   2400
         MaxLength       =   4
         TabIndex        =   9
         Top             =   1200
         Width           =   1335
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "optional"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   7320
         TabIndex        =   20
         Top             =   1560
         Width           =   465
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "optional"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   3840
         TabIndex        =   19
         Top             =   1560
         Width           =   465
      End
      Begin VB.Label lblmaxy 
         AutoSize        =   -1  'True
         BackColor       =   &H80000016&
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
         Left            =   6000
         TabIndex        =   17
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label lblmaxx 
         AutoSize        =   -1  'True
         BackColor       =   &H80000016&
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
         Left            =   2400
         TabIndex        =   16
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label Label6 
         Caption         =   "MAX VAL :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4200
         TabIndex        =   15
         Top             =   3000
         Width           =   1815
      End
      Begin VB.Label label5 
         Caption         =   "MAX VAL :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   600
         TabIndex        =   14
         Top             =   3000
         Width           =   1815
      End
      Begin VB.Label Label4 
         Caption         =   "Enter Y 1"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4200
         TabIndex        =   8
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label Label3 
         Caption         =   "Enter X 2"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   600
         TabIndex        =   7
         Top             =   2280
         Width           =   1455
      End
      Begin VB.Label Label2 
         Caption         =   "Enter Y 2"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4200
         TabIndex        =   6
         Top             =   2280
         Width           =   1455
      End
      Begin VB.Label Label1 
         Caption         =   "Enter X 1"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   600
         TabIndex        =   5
         Top             =   1200
         Width           =   1455
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000011&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   855
      Left            =   0
      TabIndex        =   1
      Top             =   120
      Width           =   16575
      Begin VB.CommandButton Command8 
         Caption         =   "Draw Text"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   10320
         TabIndex        =   83
         Top             =   120
         Width           =   1935
      End
      Begin VB.CommandButton close 
         Caption         =   "CLOSE"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   12480
         TabIndex        =   82
         Top             =   120
         Width           =   1935
      End
      Begin VB.CommandButton Command6 
         Caption         =   "Draw Circle"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   8160
         TabIndex        =   72
         Top             =   120
         Width           =   1935
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Draw Rectangle"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   5280
         TabIndex        =   22
         Top             =   120
         Width           =   2655
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Point"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   3840
         TabIndex        =   18
         Top             =   120
         Width           =   1215
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Draw Line"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   360
         TabIndex        =   3
         Top             =   120
         Width           =   1935
      End
      Begin VB.CommandButton Command2 
         Caption         =   "pset"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   2520
         TabIndex        =   2
         Top             =   120
         Width           =   1095
      End
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H80000016&
      Height          =   1575
      Left            =   120
      ScaleHeight     =   1515
      ScaleWidth      =   1395
      TabIndex        =   0
      Top             =   1200
      Width           =   1455
   End
   Begin VB.Label lblmsgf2 
      AutoSize        =   -1  'True
      BackColor       =   &H80000003&
      Caption         =   "   "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   600
      TabIndex        =   21
      Top             =   7800
      Width           =   615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub bgo_Click()

Picture1.Cls

If (x2.Text = "" Or y2.Text = "") Then

MsgBox "End point invalid...Please enter both (X2 & Y2)", vbCritical, "Drawline error occured"

Else
Picture1.Line (Val(x1), Val(y1))-(Val(x2), Val(y2))

End If
Me.Refresh
End Sub

Private Sub close_Click()
End

End Sub

Private Sub Command1_Click()
Frame2.Visible = True
Picture1.Visible = True
lblmsgf2.Visible = False
Frame3.Visible = False
Frame4.Visible = False
Frame5.Visible = False

Picture1.DrawWidth = 10
Picture1.Cls

Picture1.Line (0, 0)-(Picture1.ScaleWidth, Picture1.ScaleHeight), vbGreen

Dim i As Integer

For i = 1 To 4

Picture1.DrawWidth = i
Picture1.Line (0, i * ScaleHeight / 5)-(ScaleWidth, i * ScaleHeight / 5), QBColor(i) ' 0 to 16 colors

Next i

lblmaxx.Caption = Picture1.ScaleWidth
lblmaxy.Caption = Picture1.ScaleHeight

Me.Refresh

End Sub

Private Sub Command2_Click()
Frame2.Visible = False
Picture1.Visible = True
lblmsgf2.Visible = False
Frame3.Visible = False
Frame4.Visible = False
Frame5.Visible = False

Picture1.Cls
Picture1.DrawWidth = 40
Picture1.PSet (Picture1.ScaleWidth / 2, Picture1.ScaleHeight / 2), QBColor(3) ' 3 for cyan
Me.Refresh

End Sub
Private Sub Command3_Click()
Frame2.Visible = False
Picture1.Visible = True
Frame3.Visible = False
Frame4.Visible = False
Frame5.Visible = False

lblmsgf2.Visible = True

Picture1.Cls
Picture1.DrawWidth = 30
Dim colorcode1, cc2, cc3

Picture1.PSet (Picture1.ScaleWidth / 3, Picture1.ScaleHeight / 2), RGB(255, 0, 0)
Picture1.PSet (Picture1.ScaleWidth / 2, Picture1.ScaleHeight / 2), vbGreen
Picture1.PSet (Picture1.ScaleWidth / 1.5, Picture1.ScaleHeight / 2), QBColor(14)   '14 for lightyellow

colorcode1 = Picture1.Point(Picture1.ScaleWidth / 3, Picture1.ScaleHeight \ 3)
cc2 = Picture1.Point(Picture1.ScaleWidth / 2, Picture1.ScaleHeight \ 2)
cc3 = Picture1.Point(Picture1.ScaleWidth / 1.5, Picture1.ScaleHeight \ 1.5)

lblmsgf2.Caption = "cc1 is(red) : " & colorcode1 & vbCrLf & "cc2 is(green) : " & cc2 & vbCrLf & " cc3 is(lightyellow) : " & cc3
End Sub

Private Sub Command4_Click()
Picture1.Visible = True
lblmsgf2.Visible = False
Frame3.Visible = True
Frame2.Visible = False
Frame4.Visible = False
Frame5.Visible = False

Picture1.Cls
Picture1.DrawWidth = 5
Me.Refresh

Picture1.Line (Picture1.ScaleWidth / 3, Picture1.ScaleHeight / 3)-(Picture1.ScaleWidth / 1.5, Picture1.ScaleHeight / 1.5), vbCyan, B

maxxf3.Caption = Picture1.ScaleWidth
maxyf3.Caption = Picture1.ScaleHeight

Me.Refresh

End Sub

Private Sub Command5_Click()

Dim aspect_ratio
If (op0f4.Value = True) Then
Picture1.FillStyle = 0
ElseIf (op1f4.Value = True) Then
Picture1.FillStyle = 1
ElseIf (op2f4.Value = True) Then
Picture1.FillStyle = 2
ElseIf (op3f4.Value = True) Then
Picture1.FillStyle = 3
ElseIf (op4f4.Value = True) Then
Picture1.FillStyle = 4
ElseIf (op5f4.Value = True) Then
Picture1.FillStyle = 5
ElseIf (op6f4.Value = True) Then
Picture1.FillStyle = 6
ElseIf (op7f4.Value = True) Then
Picture1.FillStyle = 7
End If
Picture1.FillColor = vbCyan

Picture1.Cls

If (cradiusf4.Text = "") Then

MsgBox "Please enter circle radius .....!", vbCritical, "Drawline error occured"

Else

        If (txtbaspectf4.Text = "") Then
        aspect_ratio = 1  'default aspect ratio for circle is 1 (perfect circle)
        Else
        aspect_ratio = Val(txtbaspectf4)
        End If
       Me.Refresh
       
       If txtbstptf4.Text = "" Or txtbendptf4.Text = "" Then
          ' this syntax supports fillstyle property
         Picture1.Circle (Val(xf4), Val(yf4)), Val(cradiusf4), vbYellow, , , aspect_ratio
      Else
             ' the below code is taking startpoint,endpoint as 0 because of "" with this fillStyle property willnot work
         Picture1.Circle (Val(xf4), Val(yf4)), Val(cradiusf4), vbGreen, Val(txtbstptf4), Val(txtbendptf4), aspect_ratio ' if startpoint/endpoint is "" then by converting it to integer by VAL() method it returns 0 for NULL
        End If
End If
Me.Refresh
End Sub

Private Sub Command6_Click()
Picture1.Visible = True
Frame4.Visible = True
Frame2.Visible = False
Frame3.Visible = False
Frame5.Visible = False

lblmaxxf4.Caption = Picture1.ScaleWidth
lblmaxyf4.Caption = Picture1.ScaleHeight
Picture1.Cls

Me.Refresh
Picture1.FillStyle = 1

Picture1.Circle (Picture1.ScaleWidth / 2, Picture1.ScaleHeight / 2), 600, vbRed

Me.Refresh
End Sub

Private Sub Command8_Click()
Frame2.Visible = False
Frame3.Visible = False
Frame4.Visible = False
Frame5.Visible = False
lblmsgf2.Visible = False

Frame5.Visible = True
Picture1.Visible = True

Picture1.DrawWidth = 5
Picture1.Cls
Me.Refresh



Picture1.CurrentX = Picture1.ScaleWidth / 2
Picture1.CurrentY = Picture1.ScaleHeight / 2



Picture1.Print "HELLO WORLD "; "...!FROM ", ' semi-colon for immediately folowing the last character,& comma for tab


Picture1.Print "vb"                   ' if charpos argument is omited it is by default to new line
Picture1.CurrentX = 100
Picture1.CurrentY = Picture1.ScaleHeight / 3

Picture1.Print "ROLLNO", "NAME", "CLASS", "STREAM"
Picture1.Print "1501", "wasit", "3rd year", "BCA"





End Sub



Private Sub drawbox_Click()

Picture1.Cls

If (op0.Value = True) Then
Picture1.FillStyle = 0
ElseIf (op1.Value = True) Then
Picture1.FillStyle = 1
ElseIf (op2.Value = True) Then
Picture1.FillStyle = 2
ElseIf (op3.Value = True) Then
Picture1.FillStyle = 3
ElseIf (op4.Value = True) Then
Picture1.FillStyle = 4
ElseIf (op5.Value = True) Then
Picture1.FillStyle = 5
ElseIf (op6.Value = True) Then
Picture1.FillStyle = 6
ElseIf (op7.Value = True) Then
Picture1.FillStyle = 7
End If

Picture1.FillColor = vbCyan

Me.Refresh

If (x2f3.Text = "" Or y2f3.Text = "") Then

MsgBox "End point invalid...Please enter both (X2 & Y2)", vbCritical, "Drawline error occured"

ElseIf chkfill.Value = 1 Then

   Picture1.Line (Val(x1f3), Val(y1f3))-(Val(x2f3), Val(y2f3)), vbGreen, BF
   Else
   Picture1.Line (Val(x1f3), Val(y1f3))-(Val(x2f3), Val(y2f3)), vbGreen, B
   
End If

Picture1.FillStyle = 1 'tranparent
Me.Refresh
End Sub

Private Sub Form_Activate()

Frame1.Left = 2000
Frame1.Top = 0
Frame1.Width = Me.Width - 4000

Picture1.Left = 0
Picture1.Top = Frame1.Height
Picture1.Width = Me.Width / 2
Picture1.Height = 6500

Me.Refresh

Frame2.Width = Picture1.Width
Frame2.Height = Picture1.Height
Frame2.Top = Picture1.Top
Frame2.Left = Picture1.Left + Picture1.Width
Me.Refresh

Frame3.Width = Frame2.Width
Frame3.Height = Frame2.Height
Frame3.Top = Frame2.Top
Frame3.Left = Frame2.Left
Me.Refresh

Frame4.Width = Frame2.Width '
Frame4.Height = Frame2.Height
Frame4.Top = Frame2.Top
Frame4.Left = Frame2.Left
Me.Refresh

Frame5.Width = Frame2.Width '
Frame5.Height = Frame2.Height
Frame5.Top = Frame2.Top
Frame5.Left = Frame2.Left
Me.Refresh


lblmsgf2.Top = Picture1.Top + Picture1.Height
lblmsgf2.Left = 200

Me.Refresh

Picture1.Visible = False
Frame2.Visible = False
Frame3.Visible = False
Frame4.Visible = False
Frame5.Visible = False


lblmsgf2.Visible = False



End Sub



Private Sub x1_KeyPress(KeyAscii As Integer)

If ((KeyAscii < 48 Or KeyAscii > 57) And (KeyAscii <> 8)) Then        ' 8 is ascii code for backspace
KeyAscii = 0
End If

End Sub

Private Sub x2_KeyPress(KeyAscii As Integer)

If ((KeyAscii < 48 Or KeyAscii > 57) And (KeyAscii <> 8)) Then        ' 8 is ascii code for backspace
KeyAscii = 0
End If

End Sub

Private Sub y1_KeyPress(KeyAscii As Integer)
If ((KeyAscii < 48 Or KeyAscii > 57) And (KeyAscii <> 8)) Then        ' 8 is ascii code for backspace
KeyAscii = 0
End If

End Sub

Private Sub y2_KeyPress(KeyAscii As Integer)

If ((KeyAscii < 48 Or KeyAscii > 57) And (KeyAscii <> 8)) Then        ' 8 is ascii code for backspace
KeyAscii = 0
End If

End Sub

