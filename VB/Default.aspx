<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.2, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function ShowDetailPopup(customerID) {
            popup.SetContentUrl('Orders.aspx?id=' + customerID);
            popup.Show();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxCardView ID="ASPxCardView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="CustomerID">
            <Columns>
                <dx:CardViewTextColumn FieldName="CompanyName" VisibleIndex="2">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="ContactName" VisibleIndex="3">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="City" VisibleIndex="4">
                </dx:CardViewTextColumn>
                <dx:CardViewHyperLinkColumn FieldName="CustomerID" ReadOnly="True" VisibleIndex="0">
                    <PropertiesHyperLinkEdit NavigateUrlFormatString="javascript:ShowDetailPopup('{0}');"
                        Text="Show Orders">
                    </PropertiesHyperLinkEdit>
                </dx:CardViewHyperLinkColumn>
            </Columns>
        </dx:ASPxCardView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\nwind.mdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [City] FROM [Customers]"></asp:SqlDataSource>
        <dx:ASPxPopupControl ID="ASPxPopupControl1" ClientInstanceName="popup" Width="800px" Height="400px" runat="server">
            <ContentCollection>
                <dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server"></dx:PopupControlContentControl>
            </ContentCollection>

        </dx:ASPxPopupControl>
    </div>
    </form>
</body>
</html>