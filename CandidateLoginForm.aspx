<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CandidateLoginForm.aspx.cs" Inherits="Advertisement_Application.CandidateLoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- CSS only -->
    <link href=" https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 
        {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-clip: padding-box;
            -webkit-appearance: none;
            -moz-appearance: none;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
</head>
<body>
    <section class="intro">
        <div class="bg-image h-100" style="background-image: url('https://mdbootstrap.com/img/Photos/new-templates/glassmorphism-article/img5.jpg');">
            <div class="mask d-flex align-items-center h-100">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-12 col-md-10 col-lg-7 col-xl-6">
                            <div class="card mask-custom">
                                <div class="card-body p-5 text-white">
                                    <div class="my-4">
                                        <p style="font-size:50px;color:black">Login Form</p>
                                        <%--<h2 class="text-center mb-5">Login Form</h2>--%>
                                        <form runat="server">
                                            <div class="form-outline mb-4">
                                                <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style3" Width="80%"></asp:TextBox>
                                              <asp:Label ID="lblEmailid" runat="server" Text="Email address" ForeColor="Black" style="font-size:19px;"></asp:Label>
                                               <%-- <label class="form-label" for="form2Example1" >Email address</label>--%>
                                            </div>
                                            <div class="form-outline mb-4">
                                                <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style3" Width="80%" TextMode="Password"></asp:TextBox>
                                                <asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="Black" style="font-size:19px;"></asp:Label>
                                               <%-- <label class="form-label" for="form2Example2">Password</label>--%>
                                            </div>
                                            <div class="row mb-4">
                                                <div class="col d-flex justify-content-center">
                                                    <div class="form-check">
                                                        <input
                                                            class="form-check-input"
                                                            type="checkbox"
                                                            value=""
                                                            id="form2Example34" />
                                                        <label class="form-check-label" for="form2Example34">Remember me </label>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <a href="Find_Account.aspx">Forgot password?</a>
                                                </div>
                                            </div>
                                            <div>
                                                <asp:Button ID="btnmanagerlogin" runat="server" Text="Login" OnClick="SignIn_Click" class="btn btn-primary btn-block mb-4" />
                                                <asp:Label ID="lblErrormessage3" Visible="False" runat="server" Text="Incorrect user credentials!" ForeColor="Red"></asp:Label>
                                                <%-- <asp:Label ID="lblErrormessage3" Visible="False" runat="server" Text="Incorrect user credentials!" ForeColor="Red" CssClass="auto-style3" Width="369px"></asp:Label>--%>
                                            </div>
                                             
                                           <%-- <asp:TextBox ID="lblErrormessage1" Visible="false" runat="server" Text="Incorrect user credentials" ForeColor="Red" CssClass="auto-style3" Width="195px"></asp:TextBox>--%>
                                            <div class="text-center">
                                                <p>Not a member? <a href="Master_SignUp_Form.aspx">Register</a></p>
                                                <p>or sign up with:</p>
                                                <button type="button" class="btn btn-primary btn-floating mx-1">
                                                    <i class="fab fa-facebook-f"></i>
                                                </button>
                                                <button type="button" class="btn btn-primary btn-floating mx-1">
                                                    <i class="fab fa-google"></i>
                                                </button>
                                                <button type="button" class="btn btn-primary btn-floating mx-1">
                                                    <i class="fab fa-twitter"></i>
                                                </button>
                                                <button type="button" class="btn btn-primary btn-floating mx-1">
                                                    <i class="fab fa-github"></i>
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        © 2021 | Sayantan Lodh | All rights reserved.
    </section>
</body>
</html>
