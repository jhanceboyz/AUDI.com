
Partial Class Admin_Add_Car
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim ab As New DataClassesDataContext
        Dim data = From tmp In ab.SystemTables Where tmp.Id = 1 Select tmp
        Dim a As New Cartable
        a.CarName = TextBox1.Text
        a.Variant = TextBox2.Text
        a.Description = TextBox3.Text
        a.Price = TextBox4.Text
        a.Status = "Yes"
        a.Image = "~/Images/" + data.First.ImageId.ToString + ".jpg "
        a.Categoryid = DropDownList1.SelectedValue

        If TextBox5.Text = "" Then
            a.Offer = 0
            a.OfferStatus = "No"
        Else
            a.Offer = TextBox5.Text
            a.OfferStatus = "Yes"
        End If
        FileUpload1.SaveAs(Server.MapPath(a.Image))
        ab.Cartables.InsertOnSubmit(a)
        data.First.ImageId = data.First.ImageId + 1
        ab.SubmitChanges()
        Response.Redirect("Add Car.aspx")
    End Sub
End Class
