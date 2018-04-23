<%-- BeginRegion --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Data_Bind_Control_InDataItemTemplate" %>

<%@ Register Assembly="DevExpress.Web.v15.1"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v15.1"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Provide data binding for controls from a column's DataItemTemplate</title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
    </div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/pubs.mdb"
            SelectCommand="SELECT [title_id], [title], [type], [pubdate], [price] FROM [titles]" DeleteCommand="DELETE FROM [titles] WHERE [title_id] = ?" InsertCommand="INSERT INTO [titles] ([title_id], [title], [type], [pubdate], [price]) VALUES (?, ?, ?, ?, ?)" UpdateCommand="UPDATE [titles] SET [title] = ?, [type] = ?, [pubdate] = ?, [price] = ? WHERE [title_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="title_id" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="pubdate" Type="DateTime" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="title_id" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="title_id" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="pubdate" Type="DateTime" />
                <asp:Parameter Name="price" Type="Decimal" />
            </InsertParameters>
        </asp:AccessDataSource>
        &nbsp; &nbsp;&nbsp;&nbsp;
<dxwgv:aspxgridview id="ASPxGridView1" runat="server" width="950px" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" KeyFieldName="title_id" OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared">
  <Settings ShowGroupPanel="True"></Settings>
    <Columns>
        <dxwgv:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
        <dxwgv:GridViewDataTextColumn Caption="title_id" FieldName="title_id" ReadOnly="True"
            VisibleIndex="1">
        </dxwgv:GridViewDataTextColumn>
        <dxwgv:GridViewDataTextColumn Caption="title" FieldName="title" VisibleIndex="2">
            <DataItemTemplate>
                <dxe:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="100%">
                </dxe:ASPxTextBox>
            </DataItemTemplate>
        </dxwgv:GridViewDataTextColumn>
        <dxwgv:GridViewDataTextColumn Caption="type" FieldName="type" VisibleIndex="3">
        </dxwgv:GridViewDataTextColumn>
        <dxwgv:GridViewDataDateColumn Caption="pubdate" FieldName="pubdate" VisibleIndex="4">
        </dxwgv:GridViewDataDateColumn>
        <dxwgv:GridViewDataTextColumn Caption="price" FieldName="price" VisibleIndex="5">
            <DataItemTemplate>
                <dxe:ASPxTextBox ID="ASPxTextBox2" runat="server" Text='<%# Eval("price") %>' Width="100%">
                </dxe:ASPxTextBox>
            </DataItemTemplate>
        </dxwgv:GridViewDataTextColumn>
    </Columns>
    <SettingsEditing Mode="Inline" />
</dxwgv:aspxgridview>
        &nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<br />
    </form>
</body>
</html>