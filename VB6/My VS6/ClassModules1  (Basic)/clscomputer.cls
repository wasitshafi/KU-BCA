VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clscomputer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public processor As String
Public os As String
Public hd As Integer
Public ram  As Integer

Public Sub incram()
ram = ram + 16
If ram >= 128 Then
ram = 128
End If
End Sub

Public Sub decram()
ram = ram - 4
If ram <= 8 Then
ram = 8
End If

End Sub

Public Sub incrhd()
hd = hd + 1
If hd >= 4 Then
ram = 4
End If
End Sub

Public Sub cngos()
If os = "windows 8" Then
 os = "windows 10"
 Else
 os = "windows 8"
 End If
 
End Sub


