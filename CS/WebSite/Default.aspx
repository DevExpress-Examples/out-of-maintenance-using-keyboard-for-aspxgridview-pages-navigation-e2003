<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v10.1" Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dxw" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v10.1" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ASPxGridView Keyboard Navigation</title>
    <script type="text/javascript" src="JS/KeyboardNavigation.js"></script>
    <link rel="stylesheet" type="text/css" href="CSS/KeyboardNavigation.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                     <table class="legend">
                        <thead>
                            <tr>
                                <th colspan="2">
                                    Navigation Keys:
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="key">
                                    Ctrl + <span class="arrow">←</span>
                                </td>
                                <td>
                                    – previous page
                                </td>
                            </tr>
                            <tr>
                                <td class="key">
                                    Ctrl + <span class="arrow">→</span>
                                </td>
                                <td>
                                    – next page
                                </td>
                            </tr>
                            <tr>
                                <td class="key">
                                    Ctrl + Home
                                </td>
                                <td>
                                    – first page
                                </td>
                            </tr>
                            <tr>
                                <td class="key">
                                    Ctrl + End
                                </td>
                                <td>
                                    – last page
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td>
                    <dx:ASPxGridView ID="grid" ClientInstanceName="gridView" runat="server" DataSourceID="AccessDataSource1" Width="700px">
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="ContactName" VisibleIndex="0" />
                            <dx:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="1" />
                            <dx:GridViewDataTextColumn FieldName="City" VisibleIndex="2" />
                            <dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="3" />
                        </Columns>
                        <SettingsPager ShowDefaultImages="False">
                            <NextPageButton Text="Ctrl + →" />
                            <PrevPageButton Text="Ctrl + ←" />
                        </SettingsPager>
                    </dx:ASPxGridView>
                    <script type="text/javascript">
                        AddKeyboardNavigationTo(gridView);
                    </script>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
                        SelectCommand="SELECT [ContactName], [CompanyName], [City], [Country] FROM [Customers]" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
