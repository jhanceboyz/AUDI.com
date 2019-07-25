
Partial Class Add_Car_Brouchure
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim ab As New DataClassesDataContext
        Dim data = From tmp In ab.SystemTables Where tmp.Id = 1 Select tmp
        Dim a As New BrouchureTable
        a.Title = TextBox1.Text
        a.Status = "yes"
        a.CarId = Convert.ToInt16(DropDownList3.SelectedValue)
        a.Brouchure = "~/Brouchure/" + data.First().ImageId.ToString() + ".pdf"
        'FileUpload1.SaveAs(Server.MapPath(a.Brouchure))
        Data.First().imageid = Data.First().imageid + 1

        ab.BrouchureTables.InsertOnSubmit(a)
        ab.SubmitChanges()

        Response.Redirect("Add Car Brouchure.aspx")

    End Sub
End Class
