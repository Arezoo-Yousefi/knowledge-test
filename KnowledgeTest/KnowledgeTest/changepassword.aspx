﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="KnowledgeTest.changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content-wrap sidenav-open d-flex flex-column">
        <div class="breadcrumb">
            <h1>Change Password</h1>
        </div>

        <div class="separator-breadcrumb border-top"></div>

        <div class="row offset-3">
            <div class="col-md-8">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="col-md-12 form-group mb-3">
                            <label for="phone">Current Password</label>
                            <asp:TextBox ID="txtCurrentPassword" TextMode="Password" CssClass="form-control" placeholder="Enter your Current Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator Display="Dynamic" ErrorMessage="Please enter your current password" CssClass="text-danger font-weight-bold" ControlToValidate="txtCurrentPassword" runat="server" />
                        </div>
                        <div class="col-md-12 form-group mb-3">
                            <label for="phone">New Password</label>
                            <asp:TextBox ID="txtNewPassword" TextMode="Password" CssClass="form-control" placeholder="Enter your New Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator Display="Dynamic" ErrorMessage="Please enter your new password" CssClass="text-danger font-weight-bold" ControlToValidate="txtNewPassword" runat="server" />
                        </div>
                        <div class="col-md-12 form-group mb-3">
                            <label for="phone">Confirm NewPassword</label>
                            <asp:TextBox ID="txtConfirmPassword" TextMode="Password" CssClass="form-control" placeholder="Confirm your New Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator Display="Dynamic" ErrorMessage="Please confirm your password" CssClass="text-danger font-weight-bold" ControlToValidate="txtConfirmPassword" runat="server" />
                        </div>
                        <%--<button class="btn btn-primary float-right">Submit</button>--%>
                        <asp:LinkButton CssClass="btn btn-primary ripple m-1 float-right" runat="server">Submit</asp:LinkButton>
                        <asp:LinkButton CssClass="btn btn-dark  m-1 float-right " runat="server" CausesValidation="false" PostBackUrl="~/dashboard.aspx">Cancel</asp:LinkButton>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
