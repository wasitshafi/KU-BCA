Attribute VB_Name = "Module1"
Public conn As ADODB.connection
Public Sub connection()
    Dim path As String
    path = App.path
    If (Right(path, 1) <> "\") Then
        path = path + "\"
    End If
    path = path + "student_management_sys.mdb"
   Set conn = New ADODB.connection
    conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path + ";Persist Security Info=False"
    conn.Open
End Sub

