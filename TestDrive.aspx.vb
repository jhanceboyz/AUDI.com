
Partial Class TestDrive
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim ab As New DataClassesDataContext
        Dim data1 = From tmp In ab.TestDriveTables Where tmp.EMail = TextBox7.Text And tmp.Status = "Yes" Select tmp

        If data1.Count = 0 Then
            Dim data = From tmp In ab.SystemTables Where tmp.Id = 1 Select tmp
            Dim a As New TestDriveTable
            a.CarId = Request.QueryString("i")
            a.FirstName = TextBox4.Text
            a.LastName = TextBox6.Text
            a.MobileNo = TextBox5.Text
            a.EMail = TextBox7.Text
            a.Profession = DropDownList1.SelectedValue
            a.Salary = DropDownList2.SelectedValue
            a.DealerId = DropDownList3.SelectedValue
            a.Status = "Yes"
            a.Proof = "~/Proof/" + data.First.BookingId.ToString + ".jpg"
            a.BookingId = data.First().BookingId
            ab.TestDriveTables.InsertOnSubmit(a)
            data.First().BookingId = data.First().BookingId + 1
            ab.SubmitChanges()
            Session("bid") = a.BookingId
            Response.Redirect("thanks.aspx?i=" + a.CarId.ToString)
        Else
            Literal1.Text = "Your Test Drive Booking is Already Pending, Please wait for some time."
        End If
    End Sub
End Class
