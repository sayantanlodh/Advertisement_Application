<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Candidate_Form_LinkedToNewApplication.aspx.cs" Inherits="Advertisement_Application.Candidate_Form_LinkedToNewApplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LblForPost" runat="server" Text="Application for engagement of"></asp:Label><asp:Label ID="lbl1" runat="server" Text='<%#Session["postname"]%>'/>
        </div>
    </form>
</body>
</html>
