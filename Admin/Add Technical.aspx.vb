
Partial Class Add_Technical
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim obj As New TechnicalTable()
        obj.CarId = Convert.ToInt16(DropDownList2.SelectedValue)
        obj.TyreSize = TextBox1.Text
        obj.transmissiontype = TextBox2.Text
        obj.maxpower = TextBox3.Text
        obj.maxtorque = TextBox4.Text
        obj.borestroke = TextBox5.Text
        obj.fuelinjection = TextBox6.Text
        obj.enginetype = TextBox7.Text
        obj.numberofcylinder = Convert.ToInt16(TextBox8.Text)
        obj.positionofengine = TextBox9.Text
        obj.layout = TextBox10.Text
        obj.compressionratio = TextBox11.Text
        Dim ab As New DataClassesDataContext()
        ab.TechnicalTables.InsertOnSubmit(obj)
        ab.SubmitChanges()
        Response.Redirect("Add Technical.aspx")
    End Sub
End Class
