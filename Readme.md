<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128530163/15.2.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T339685)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->

# Card View for ASP.NET Web Forms - How to display detail data in a pop-up window

In this example, [ASPxCardView](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxCardView) contains a hyperlink column. 

```aspx
<dx:CardViewHyperLinkColumn FieldName="CustomerID" >
    <PropertiesHyperLinkEdit NavigateUrlFormatString="javascript:ShowDetailPopup('{0}');" />
</dx:CardViewHyperLinkColumn>
```

When a user clicks a hyperlink, a pop-up window opens that displays detail data: orders of the current customer. The [SetContentUrl](https://docs.devexpress.com/AspNet/js-ASPxClientPopupControlBase.SetContentUrl(url)) method specifies the web page ([Orders.aspx](./CS/Orders.aspx)) to be displayed in the window and the query parameter (`customerID`) to select data from the database.

```jscript
function ShowDetailPopup(customerID) {
    popup.SetContentUrl('Orders.aspx?id=' + customerID);
    popup.SetHeaderText(customerID);
    popup.Show();
}
```

## Files to Review

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Orders.aspx](./CS/Orders.aspx) (VB: [Orders.aspx](./VB/Orders.aspx))
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-cardview-detail-data-in-popup-window&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-cardview-detail-data-in-popup-window&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
