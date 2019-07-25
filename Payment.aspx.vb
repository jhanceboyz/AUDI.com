
Partial Class Admin_Payment
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If (DropDownList2.SelectedValue = "Jan" Or DropDownList2.SelectedValue = "Feb" Or DropDownList2.SelectedValue = "Mar" Or DropDownList2.SelectedValue = "April") And DropDownList3.SelectedValue = "2016" Then
            Literal1.Text = "Invalid Date Selection"
        Else
            Dim obj As New PaymentTable
            obj.ExpDate = DropDownList2.SelectedValue.ToString + " " + DropDownList3.SelectedValue.ToString
            obj.Amount = TextBox1.Text
            obj.CardType = DropDownList1.SelectedValue
            obj.CardNumber = TextBox2.Text
            obj.Name = TextBox3.Text
            obj.CVC = TextBox4.Text
            obj.BookingId = Session("bid").ToString
            Dim ab As New DataClassesDataContext()
            ab.PaymentTables.InsertOnSubmit(obj)
            ab.SubmitChanges()
            Response.Redirect("Thanks.aspx?i=" + Request.QueryString("i").ToString)
        End If
    End Sub

    Protected Sub TextBox2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox2.TextChanged

    End Sub
End Class
