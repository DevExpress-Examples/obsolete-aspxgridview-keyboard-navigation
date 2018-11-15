<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# OBSOLETE: ASPxGridView - how to implement keyboard navigation


<p><strong>This example is now obsolete. Use the approach illustrated in the </strong><a href="https://www.devexpress.com/Support/Center/p/E2003">E2003: Using keyboard for ASPxGridView pages navigation</a><strong> example instead.</strong></p><p>This is the current workaround for the AS16053 request.<br />
The following keys are processed in this example:<br />
 <br />
 * Ctrl + Up Arrow (go to a previous row)<br />
 * Ctrl + Down Arrow (do to a next row)</p><p><strong>Note:</strong> Starting with <strong>v2010 vol 1</strong>, this functionality can be obtained by setting the grid's <strong>KeyboardSupport</strong> property to true:</p><p><a href="http://documentation.devexpress.com/#AspNet/CustomDocument8124"><u>Keyboard Navigation</u></a> <br />
<a href="http://www.devexpress.com/Subscriptions/DXperience/WhatsNew2010v1/index.xml?page=33"><u>Common Changes Across All ASP.NET Controls -> Keyboard Navigation Support in Grid Controls</u></a> </p><p>By default, the grid's <strong>KeyboardSupport</strong> property is set to <strong>false</strong>. Refer to the <a href="http://demos.devexpress.com/ASPxGridViewDemos/Accessibility/KeyboardSupport.aspx"><u>Accessibility - Keyboard Support</u></a> Online Demo to see this feature in action.</p>

<br/>


