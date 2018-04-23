Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web
Imports System.Drawing
Imports System.Collections.Generic
Imports DevExpress.Data

Partial Public Class Data_Bind_Control_InDataItemTemplate
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
	End Sub
	Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs)
	End Sub
	Protected Sub ASPxGridView1_HtmlDataCellPrepared(ByVal sender As Object, ByVal e As ASPxGridViewTableDataCellEventArgs)
		If e.DataColumn.FieldName = "title" Then
			Dim textBox As ASPxTextBox = TryCast(ASPxGridView1.FindRowCellTemplateControl(e.VisibleIndex, e.DataColumn, "ASPxTextBox1"), ASPxTextBox)
			textBox.Text = Convert.ToString(e.CellValue)
		End If
	End Sub
End Class


