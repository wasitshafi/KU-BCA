VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9165
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   17415
   LinkTopic       =   "Form1"
   ScaleHeight     =   9165
   ScaleWidth      =   17415
   StartUpPosition =   3  'Windows Default
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "C:\Program Files (x86)\Microsoft Visual Studio\VB98\BIBLIO.MDB"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   735
      Left            =   16200
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Publishers"
      Top             =   2400
      Width           =   3015
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Bindings        =   "Form1.frx":0000
      Height          =   12615
      Left            =   840
      TabIndex        =   0
      Top             =   360
      Width           =   14295
      _ExtentX        =   25215
      _ExtentY        =   22251
      _Version        =   393216
      AllowUserResizing=   3
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
