<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Candidate_Application_Form.aspx.cs" Inherits="Advertisement_Application.Candidate_Application_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div class="form-center">
            <div>
                <table>
                    <tr>
                        <h2>Application for engagement of</h2>
                        <%--<asp:Label ID="Label1" runat="server" Text="Application for engagement of" ForeColor="Blue"></asp:Label>--%>
                    </tr>
                    <tr>
                        <td>Position you want to apply for:</td>
                        <td> 
                            <asp:DropDownList ID="DdlPosition" runat="server">
                                <asp:ListItem Value="0">--Select Position--</asp:ListItem>
                                <asp:ListItem Value="1">Data Entry Operator</asp:ListItem>
                                <asp:ListItem Value="2">Software Support Personel</asp:ListItem>
                                <asp:ListItem Value="3">Software Developer</asp:ListItem>
                                <asp:ListItem Value="4">Senior Software Developer</asp:ListItem>
                            </asp:DropDownList>
                            <%--<asp:TextBox ID="txtPost" placeholder="for the post of" runat="server" />--%>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="DdlPosition"
                                runat="server" Display="Dynamic" />
                        </td>
                    </tr>
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:TextBox ID="txtFirstName" Placeholder="first name" runat="server" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtMiddleName" Placeholder="middle name" runat="server" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtLastName" Placeholder="last name" runat="server" />
                        </td>
                    </tr> 
                    <tr>
                        <td>Father's/Mother's Name:</td>
                        <td>
                            <asp:TextBox ID="txtPFirstName" Placeholder="first name" runat="server" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtPMiddleName" Placeholder="middle name" runat="server" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtPLastName" Placeholder="last name" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>Sex:</td>
                        <td>
                            <asp:DropDownList ID="DdlSex" runat="server">

                                <asp:ListItem Value="0">--Select Gender--</asp:ListItem>
                                <asp:ListItem Value="1">-Male-</asp:ListItem>
                                <asp:ListItem Value="2">-Female-</asp:ListItem>
                                <asp:ListItem Value="3">-Other-</asp:ListItem>
                            </asp:DropDownList>
                        </td>

                    </tr>

                    <tr>
                        <td>Date of Birth:</td>
                        <td>
                            <asp:DropDownList ID="DdlDay" runat="server">
                                <asp:ListItem Value="0">--Select Day--</asp:ListItem>
                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="5">5</asp:ListItem>
                                <asp:ListItem Value="6">6</asp:ListItem>
                                <asp:ListItem Value="7">7</asp:ListItem>
                                <asp:ListItem Value="8">8</asp:ListItem>
                                <asp:ListItem Value="9">9</asp:ListItem>
                                <asp:ListItem Value="10">10</asp:ListItem>
                                <asp:ListItem Value="11">11</asp:ListItem>
                                <asp:ListItem Value="12">12</asp:ListItem>
                                <asp:ListItem Value="13">13</asp:ListItem>
                                <asp:ListItem Value="14">14</asp:ListItem>
                                <asp:ListItem Value="15">15</asp:ListItem>
                                <asp:ListItem Value="16">16</asp:ListItem>
                                <asp:ListItem Value="17">17</asp:ListItem>
                                <asp:ListItem Value="18">18</asp:ListItem>
                                <asp:ListItem Value="19">19</asp:ListItem>
                                <asp:ListItem Value="20">20</asp:ListItem>
                                <asp:ListItem Value="21">21</asp:ListItem>
                                <asp:ListItem Value="22">22</asp:ListItem>
                                <asp:ListItem Value="23">23</asp:ListItem>
                                <asp:ListItem Value="24">24</asp:ListItem>
                                <asp:ListItem Value="25">25</asp:ListItem>
                                <asp:ListItem Value="26">26</asp:ListItem>
                                <asp:ListItem Value="27">27</asp:ListItem>
                                <asp:ListItem Value="28">28</asp:ListItem>
                                <asp:ListItem Value="29">29</asp:ListItem>
                                <asp:ListItem Value="30">30</asp:ListItem>
                                <asp:ListItem Value="31">31</asp:ListItem>
                            </asp:DropDownList>
                        </td>

                        <td>
                            <asp:DropDownList ID="DdlMonth" runat="server">
                                <asp:ListItem Value="0">--Select Month--</asp:ListItem>
                                <asp:ListItem Value="1">January</asp:ListItem>
                                <asp:ListItem Value="2">February</asp:ListItem>
                                <asp:ListItem Value="3">March</asp:ListItem>
                                <asp:ListItem Value="4">April</asp:ListItem>
                                <asp:ListItem Value="5">May</asp:ListItem>
                                <asp:ListItem Value="6">June</asp:ListItem>
                                <asp:ListItem Value="7">July</asp:ListItem>
                                <asp:ListItem Value="8">August</asp:ListItem>
                                <asp:ListItem Value="9">September</asp:ListItem>
                                <asp:ListItem Value="10">October</asp:ListItem>
                                <asp:ListItem Value="11">November</asp:ListItem>
                                <asp:ListItem Value="12">December</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="DdlYear" runat="server">
                                <asp:ListItem Value="0">--Select Month--</asp:ListItem>
                                <asp:ListItem Value="1">1997</asp:ListItem>
                                <asp:ListItem Value="2">1998</asp:ListItem>
                                <asp:ListItem Value="3">1999</asp:ListItem>
                                <asp:ListItem Value="4">2000</asp:ListItem>
                                <asp:ListItem Value="5">2001</asp:ListItem>
                                <asp:ListItem Value="6">2002</asp:ListItem>
                                <asp:ListItem Value="7">2003</asp:ListItem>
                                <asp:ListItem Value="8">2004</asp:ListItem>
                                <asp:ListItem Value="9">2005</asp:ListItem>
                                <asp:ListItem Value="10">2006</asp:ListItem>
                                <asp:ListItem Value="11">2007</asp:ListItem>
                                <asp:ListItem Value="12">2008</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td>Address Line 1:
                        </td>
                        <td>
                            <asp:TextBox ID="txtAddress1" runat="server" />
                        </td>
                        <td></td>
                        <td>Address Line 2:
                        </td>
                        <td>
                            <asp:TextBox ID="TxtAddress2" runat="server" />
                        </td>
                    </tr>

                    <tr>
                        <td>Post Office:
                        </td>
                        <td>
                            <asp:TextBox ID="TxtPostOfc" runat="server" />
                        </td>
                        <td></td>
                        <td>Postal Code:
                        </td>
                        <td>
                            <asp:TextBox ID="TxtPostalCode" runat="server" />
                        </td>
                    </tr>

                    <tr>
                        <td>State:
                        </td>
                        <td>

                            <asp:DropDownList ID="DdlState" runat="server" OnSelectedIndexChanged="DdlState_SelectedIndexChanged">
                                <asp:ListItem Value="0">--Select State--</asp:ListItem>
                            </asp:DropDownList>
                            <%--  <asp:DropDownList ID="DdlState" runat="server" 
                              OnSelectedIndexChanged="DdlState_SelectedIndexChanged">
                              

                          </asp:DropDownList>--%>
                        </td>
                        <td></td>
                        <td>District:
                        </td>
                        <td>
                            <asp:DropDownList ID="DdlDis" runat="server"></asp:DropDownList>
                            <asp:DropDownList ID="DdlDistrict" runat="server">
                                <asp:ListItem Value="0">--Select District--</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td>Mobile No:
                        </td>
                        <td>
                            <asp:TextBox ID="txtMobno" runat="server" />
                        </td>
                        <td></td>
                        <td>Email:
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" />
                        </td>
                    </tr>

                    <tr>
                        <td></td>
                        <td>
                            <asp:Button Text="Save" runat="server" /></td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
