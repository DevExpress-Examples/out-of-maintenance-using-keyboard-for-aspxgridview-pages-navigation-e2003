<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [KeyboardNavigation.js](./CS/WebSite/JS/KeyboardNavigation.js) (VB: [KeyboardNavigation.js](./VB/WebSite/JS/KeyboardNavigation.js))
<!-- default file list end -->
# Using keyboard for ASPxGridView pages navigation


<p>This example demonstrates how to process a document's keydown<br />
event and how to activate some ASPxGridView's page according to<br />
the key that has been pressed.</p><p>The following keys are processed in this example:<br />
 <br />
 * Ctrl + Left Arrow (activate previous page)<br />
 * Ctrl + Right Arrow (activate next page)<br />
 * Ctrl + Home (activate first page)<br />
 * Ctrl + End (activate last page)</p><p>The AttachEventToElement method of the ASPxClientUtils class<br />
is used to subscribe to a document's keydown event. The PrevPage,<br />
NextPage, and GotoPage methods of the ASPxClientGridView class<br />
are used to change the active page of ASPxGridView.</p><p><strong>Note:</strong> Starting with <strong>v2010 vol 1</strong>, this functionality can be obtained by setting the grid's <strong>KeyboardSupport</strong> property to <strong>true</strong>:</p><p><a href="http://documentation.devexpress.com/#AspNet/CustomDocument8124"><u>Keyboard Navigation</u></a> <br />
<a href="http://www.devexpress.com/Subscriptions/DXperience/WhatsNew2010v1/index.xml?page=33"><u>Common Changes Across All ASP.NET Controls -> Keyboard Navigation Support in Grid Controls</u></a> </p><p>By default, the grid's <strong>KeyboardSupport</strong> property is set to false. Refer to the <a href="http://demos.devexpress.com/ASPxGridViewDemos/Accessibility/KeyboardSupport.aspx"><u>Accessibility - Keyboard Support</u></a> Online Demo to see this feature in action.</p><p><strong>See Also:</strong><br />
<a href="https://www.devexpress.com/Support/Center/p/E2237">Using keyboard for ASPxDataView pages navigation</a></p>

<br/>


