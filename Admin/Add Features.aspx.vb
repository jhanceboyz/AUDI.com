
Partial Class Add_Features
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim obj As New FeatureTable()
        obj.Carid = Convert.ToInt16(DropDownList3.SelectedValue)
        obj.Seating = Convert.ToInt16(TextBox14.Text)
        obj.WheelBase = TextBox1.Text
        obj.RimSize = TextBox2.Text
        obj.Mileage = TextBox3.Text
        obj.DriveTrain = TextBox4.Text
        obj.TurningRadies = TextBox5.Text
        obj.EngineDisplacement = TextBox6.Text
        obj.EngineTechnology = TextBox7.Text
        obj.FuelCapacity = TextBox8.Text
        obj.Fuel = TextBox9.Text
        obj.Range = TextBox10.Text
        obj.EntertainmentFeature = TextBox11.Text
        obj.Kmph = TextBox12.Text
        obj.Security = TextBox13.Text
        Dim ab As New DataClassesDataContext()
        ab.FeatureTables.InsertOnSubmit(obj)
        ab.SubmitChanges()
        Response.Redirect("Add Features.aspx")

    End Sub

    Private Sub FeatureTable(ByVal p1 As Object)
        Throw New NotImplementedException
    End Sub

    Private Function obj() As FeatureTable
        Throw New NotImplementedException
    End Function

End Class
