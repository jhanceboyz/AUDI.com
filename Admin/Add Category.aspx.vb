
Partial Class Admin_Add_Category
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim a As New CategoryTable
        a.CategoryName = TextBox1.Text
        a.Status = "Yes"
        Dim ab As New DataClassesDataContext
        ab.CategoryTables.InsertOnSubmit(a)
        ab.SubmitChanges()
        Response.Redirect("Add Category.aspx")
    End Sub
End Class
