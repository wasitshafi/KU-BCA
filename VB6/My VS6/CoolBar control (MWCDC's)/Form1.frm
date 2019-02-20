VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{38911DA0-E448-11D0-84A3-00DD01104159}#1.1#0"; "COMCT332.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5925
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9135
   LinkTopic       =   "Form1"
   ScaleHeight     =   5925
   ScaleWidth      =   9135
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   1680
      Top             =   3120
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   20
      ImageHeight     =   20
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   3
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":0000
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":027D
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":0481
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   735
      Left            =   120
      TabIndex        =   2
      Top             =   480
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   495
      Left            =   3000
      TabIndex        =   1
      Top             =   600
      Width           =   2175
   End
   Begin ComCtl3.CoolBar CoolBar1 
      Height          =   810
      Left            =   120
      TabIndex        =   0
      Top             =   1680
      Width           =   6015
      _ExtentX        =   10610
      _ExtentY        =   1429
      BandCount       =   5
      ImageList       =   "ImageList1"
      _CBWidth        =   6015
      _CBHeight       =   810
      _Version        =   "6.0.8169"
      BandBackColor1  =   16711680
      MinWidth1       =   2640
      MinHeight1      =   360
      Width1          =   2700
      NewRow1         =   0   'False
      BandStyle1      =   1
      Caption2        =   "Two"
      MinHeight2      =   360
      NewRow2         =   0   'False
      BandBackColor3  =   16776960
      Caption3        =   "three"
      MinHeight3      =   360
      Width3          =   600
      UseCoolbarColors3=   0   'False
      NewRow3         =   0   'False
      Caption4        =   "two"
      MinHeight4      =   360
      Width4          =   1440
      NewRow4         =   -1  'True
      MinHeight5      =   360
      Width5          =   1440
      NewRow5         =   0   'False
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
