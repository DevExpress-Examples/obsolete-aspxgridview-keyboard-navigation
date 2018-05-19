<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApplication1._Default" %>

<%@ register Assembly="DevExpress.Web.ASPxGridView.v9.3, Version=9.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ register Assembly="DevExpress.Web.ASPxGridView.v9.3" Namespace="DevExpress.Web.ASPxGridView"
	TagPrefix="dxwgv" %>
<%@ register Assembly="DevExpress.Web.ASPxEditors.v9.3" Namespace="DevExpress.Web.ASPxEditors"
	TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<script type ="text/javascript">
   var gridPerformingCallback = false;

function AddKeyboardNavigationTo(grid) {
	grid.BeginCallback.AddHandler(function(s, e) { gridPerformingCallback = true; });
	grid.EndCallback.AddHandler(function(s, e) { gridPerformingCallback = false; });
	ASPxClientUtils.AttachEventToElement(document, "keydown",
		function(evt) {
			return OnDocumentKeyDown(evt, grid);
		});
}

function OnDocumentKeyDown(evt, grid) {

	if(typeof(event) != "undefined" && event != null)
		evt = event;
	if(evt.ctrlKey && NeedProcessDocumentKeyDown(evt) && !gridPerformingCallback) {
			var currentIndex = grid.GetFocusedRowIndex();
			if (evt.keyCode == 40) //down
			{
				if (currentIndex == grid.GetVisibleRowsOnPage()-1)
				  {
					  return ASPxClientUtils.PreventEvent(evt);
				  } 
				else
				  {
					  grid.SetFocusedRowIndex(currentIndex+1);
				  }
			}
			if (evt.keyCode == 38)
			{
				if (currentIndex == 0)
				 {
				   return ASPxClientUtils.PreventEvent(evt);
				 } 
				else
				 {
					 grid.SetFocusedRowIndex(currentIndex-1);
				 }
			}

		}
	}


function NeedProcessDocumentKeyDown(evt) {

	var evtSrc = ASPxClientUtils.GetEventSource(evt);
	if(evtSrc.tagName == "INPUT")
		return evtSrc.type != "text" && evtSrc.type != "password";
	else
		return evtSrc.tagName != "TEXTAREA";
}
	</script>
	<div>
		 <dx:aspxgridview ID="ASPxGridView1" runat="server" AutoGenerateColumns="False"
			DataSourceID="AccessDataSource1" KeyFieldName="CategoryID" ClientInstanceName="grid">
			<columns>
				<dx:gridviewdatatextcolumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="0">
					<editformsettings Visible="False" />
				</dx:gridviewdatatextcolumn>
				<dx:gridviewdatatextcolumn FieldName="CategoryName" VisibleIndex="1">
				</dx:gridviewdatatextcolumn>
				<dx:gridviewdatatextcolumn FieldName="Description" VisibleIndex="2">
				</dx:gridviewdatatextcolumn>
			</columns>
			<settingsbehavior AllowFocusedRow="True" />
		</dx:aspxgridview>

	</div>
		<asp:accessdatasource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
			SelectCommand="SELECT * FROM [Categories]"></asp:accessdatasource>
			<script type="text/javascript">
						AddKeyboardNavigationTo(grid);
					</script>


	</form>
</body>
</html>