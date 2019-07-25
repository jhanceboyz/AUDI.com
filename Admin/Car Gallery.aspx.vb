
Partial Class Admin_Car_Gallery
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim ab As New DataClassesDataContext
        Dim data = From tmp In ab.SystemTables Where tmp.Id = 1 Select tmp
        Dim a As New Cargallerytable
        a.CarId = DropDownList2.SelectedValue
        a.Image = "~/Images/" + data.First.ImageId.ToString + ".jpg "
        FileUpload1.SaveAs(Server.MapPath(a.Image))
        a.Title = TextBox1.Text
        ab.Cargallerytables.InsertOnSubmit(a)
        data.First.ImageId = data.First.ImageId + 1
        ab.SubmitChanges()
        Response.Redirect("Car Gallery.aspx")

    End Sub

    Protected Sub SqlDataSource3_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource3.Selecting

    End Sub
End Class
