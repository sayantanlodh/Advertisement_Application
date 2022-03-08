<%@ Page Language="C#" AutoEventWireup="true" Codefile="Main_New_Application_Form.aspx.cs" Inherits="Advertisement_Application.Main_New_Application_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <div>
                            <asp:Label ID="LblPost" runat="server" Text="Post"></asp:Label>
                            <asp:TextBox ID="TxtPost" runat="server"></asp:TextBox>
                             <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
