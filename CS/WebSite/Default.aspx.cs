using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web;
using System.Drawing;
using System.Collections.Generic;
using DevExpress.Data;

public partial class Data_Bind_Control_InDataItemTemplate: System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e) {
    }
    protected void ASPxGridView1_HtmlDataCellPrepared(object sender, ASPxGridViewTableDataCellEventArgs e) {
        if(e.DataColumn.FieldName == "title") {
            ASPxTextBox textBox = ASPxGridView1.FindRowCellTemplateControl(e.VisibleIndex, e.DataColumn, "ASPxTextBox1") as ASPxTextBox;
            textBox.Text = Convert.ToString(e.CellValue);
        }
    }
}


