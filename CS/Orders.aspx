<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Orders" %>

<%@ Register Assembly="DevExpress.Web.v15.2, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxCardView ID="ASPxCardView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="OrderID">
            <Columns>
                <dx:CardViewTextColumn FieldName="OrderID" />
                <dx:CardViewDateColumn FieldName="OrderDate" />
            </Columns>
        </dx:ASPxCardView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\nwind.mdb;Persist Security Info=True" 
            ProviderName="System.Data.OleDb" SelectCommand="SELECT [OrderID], [CustomerID], [OrderDate], [ShipCity] FROM [Orders]" 
            FilterExpression="CustomerID='{0}'">
            <FilterParameters>
                <asp:QueryStringParameter Name="CustomerID" QueryStringField="id" />
            </FilterParameters>
            </asp:SqlDataSource>
        
    </div>
    </form>
</body>
</html>
