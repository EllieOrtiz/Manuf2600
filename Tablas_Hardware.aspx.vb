
Partial Class Tablas_Hardware
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        GridView1.Visible = True
        DetailsView1.Visible = True
        GridView2.Visible = False
        DetailsView2.Visible = False

    End Sub


    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        GridView1.Visible = False
        DetailsView1.Visible = False
        GridView2.Visible = True
        DetailsView2.Visible = True
    End Sub

End Class
