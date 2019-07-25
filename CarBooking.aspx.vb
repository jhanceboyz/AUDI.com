
Partial Class CarBooking
    Inherits System.Web.UI.Page

    Private Property LastName As String

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim ab As New DataClassesDataContext
        Dim data1 = From tmp In ab.Booking_Tables Where tmp.Email = TextBox4.Text And tmp.Status = "Booked" Select tmp

        If data1.Count = 0 Then
            Dim data = From tmp In ab.SystemTables Where tmp.Id = 1 Select tmp
            Dim a As New Booking_Table
            a.CarID = Request.QueryString("i")
            a.FirstName = TextBox1.Text
            a.LastName = TextBox3.Text
            a.Mobile = TextBox2.Text
            a.Email = TextBox4.Text

            a.BookingAmount = TextBox5.Text
            a.Profession = DropDownList1.SelectedValue
            a.Salary = DropDownList2.SelectedValue
            a.DealerId = DropDownList3.SelectedValue
            a.Status = "Booked"
            a.Proof = "~/Proof/" + data.First.BookingId.ToString + ".jpg"
            a.Date = System.DateTime.Now.Date.Date
            a.BookingId = data.First.BookingId
            ab.Booking_Tables.InsertOnSubmit(a)
            data.First.BookingId = data.First.BookingId + 1
            ab.SubmitChanges()
            Session("bid") = a.BookingId
            Response.Redirect("Payment.aspx?i=" + Request.QueryString("i").ToString)
        Else
            Literal1.Text = "Your Booking is Already Pending, Please wait for some time."
        End If
       
    End Sub
End Class
