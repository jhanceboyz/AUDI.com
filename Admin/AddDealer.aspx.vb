
Partial Class Admin_AddDealer
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim ab As New DataClassesDataContext
        Dim data = From tmp In ab.SystemTables Where tmp.Id = 1 Select tmp
        Dim a As New DealerTable
        a.Name = TextBox1.Text
        a.Location = TextBox2.Text
        a.Image = "~/Images/" + data.First.ImageId.ToString + ".jpg "
        a.Address = TextBox3.Text
        a.ContactNo = TextBox4.Text

        a.Status = "Yes"
        ab.DealerTables.InsertOnSubmit(a)
        data.First.ImageId = data.First.ImageId + 1
        ab.SubmitChanges()
        Response.Redirect("AddDealer.aspx")
    End Sub
End Class
