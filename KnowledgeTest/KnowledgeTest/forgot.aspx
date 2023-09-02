﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="KnowledgeTest.forgot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Knowledge Test-Sign in</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="assets/styles/css/themes/lite-purple.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="auth-layout-wrap" style="background-image: url(./assets/images/photo-wide-4.jpg)">
            <div class="auth-content">
                <div class="card o-hidden">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="p-4">

                                <h1 class="mb-3 text-18">Forget Password</h1>

                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <asp:TextBox ID="txtEmail" CssClass="form-control form-control-rounded" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator Display="Dynamic" ErrorMessage="Please enter an email" CssClass="text-danger font-weight-bold" ControlToValidate="txtEmail" runat="server" />
                                </div>
                                <asp:LinkButton  runat="server"  cssclass="btn btn-rounded btn-primary btn-block mt-2">Reset Password</asp:LinkButton>
                                <%--<button class="btn btn-rounded btn-primary btn-block mt-2">Reset Password</button>--%>



                                <div class="mt-3 text-center">
                                    <a href="signin.aspx" class="text-muted"><u>Sign In</u></a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
        <script src="assets/js/vendor/bootstrap.bundle.min.js"></script>
        <script src="assets/js/es5/script.min.js"></script>
    </form>
</body>
</html>