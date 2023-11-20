<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T339685)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->

# Card View for ASP.NET Web Forms - How to display detail data in a popup window
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t339685/)**
<!-- run online end -->

In this example, ASPxCardView contains a hyperlink column. 

```aspx
<dx:CardViewHyperLinkColumn FieldName="CustomerID" >
    <PropertiesHyperLinkEdit NavigateUrlFormatString="javascript:ShowDetailPopup('{0}');" Text="Show Orders" />
</dx:CardViewHyperLinkColumn>
```

When a hyperlink is clicked, a popup window is opened to display detail data - orders of the current customer. The [SetContentUrl](https://docs.devexpress.com/AspNet/js-ASPxClientPopupControlBase.SetContentUrl(url)) method specifies the web page ([Orders.aspx](./CS/Orders.aspx)) and query paramenter (customer ID) to be displayed in the window.

```jscript
function ShowDetailPopup(customerID) {
    popup.SetContentUrl('Orders.aspx?id=' + customerID);
    popup.Show();
}
```

## Files to Review

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Orders.aspx](./CS/Orders.aspx) (VB: [Orders.aspx](./VB/Orders.aspx))
