
Partial Class Feedback
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim a As New FeedbackTable
        a.FirstName = TextBox1.Text
        a.LastName = TextBox2.Text
        a.Email = TextBox3.Text
        a.Mobile = TextBox4.Text
        a.Message = TextBox5.Text
        Dim ab As New DataClassesDataContext
        ab.FeedbackTables.InsertOnSubmit(a)
        ab.SubmitChanges()
        Response.Redirect("Feedback.aspx")
    End Sub
End Class
