<%@ Page Language="C#" AutoEventWireup="true" Codefile="PostStartEnd.aspx.cs" Inherits="Advertisement_Application.PostStartEnd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="0" cellpadding="3" cellspacing="0" border = "0">
    <tr>
        <td>Post:</td>
        <td><asp:TextBox ID = "txtPost" placeholder="for the post of" runat="server" />
        </td>
        <td>
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor = "Red" ControlToValidate="txtPost"
            runat="server" Display = "Dynamic"/>
        </td>
    </tr>
    <tr>
        <td>Start Date:</td>
        <td><asp:TextBox ID = "txtStartDate" runat="server" /></td>
        <td>
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor = "Red" ControlToValidate="txtStartDate"
            runat="server" Display = "Dynamic" />
            <asp:RegularExpressionValidator runat="server" ForeColor = "Red" ControlToValidate="txtStartDate"
            ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
            ErrorMessage="Invalid date format."/>
        </td>
    </tr>
    <tr>
        
        <td>End Date:</td>
        <td><asp:TextBox ID = "txtEndDate" runat="server" /></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Required" ForeColor = "Red" ControlToValidate="txtEndDate"
            runat="server" Display = "Dynamic" />
            <asp:RegularExpressionValidator runat="server" ForeColor = "Red" ControlToValidate="txtEndDate"
            ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
            ErrorMessage="Invalid date format."/>
        </td>
    </tr>
    <tr>
        <td></td>
        <td><asp:Button Text="Save" runat="server" OnClick = "Insert" /></td>
        <td></td>
    </tr>
</table>
        </div>
    </form>
</body>
</html>
