﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addtesttype.aspx.cs" Inherits="KnowledgeTest.addtesttype" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content-wrap sidenav-open d-flex flex-column">
        <div class="breadcrumb">
            <h1>Add Test Type</h1>
        </div>

        <div class="separator-breadcrumb border-top"></div>

        <div class="row">
            <div class="col-md-12">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6 form-group mb-3">
                                <label for="picker1">Test Type</label>
                                <asp:textBox runat="server" ID="txtTestType" CssClass="form-control">
                                    
                                </asp:textBox>
                                <asp:RequiredFieldValidator Display="Dynamic" ErrorMessage="Please enter the type of the test" CssClass="text-danger font-weight-bold" ControlToValidate="txtTestType" runat="server" />
                            </div>
                            <div class="col-md-6 form-group mb-3">
                                <label for="picker1">Language</label>
                                <asp:textBox runat="server" ID="txtlanguage" CssClass="form-control">
                                   
                                </asp:textBox>
                                <asp:RequiredFieldValidator Display="Dynamic" ErrorMessage="Please enter the language" CssClass="text-danger font-weight-bold" ControlToValidate="txtlanguage" runat="server" />
                            </div>
                            <div class="col-md-12">
                                <asp:Label Text="" CssClass="alert-danger" runat="server" ID="lblError" />
                                <asp:Label Text="" CssClass="alert-success" runat="server" ID="lblResult" />
                                <%--<button class="btn btn-primary">Submit</button>--%>
                                <asp:LinkButton CssClass="btn btn-dark  m-1 float-right " runat="server" CausesValidation="false" PostBackUrl="~/testtypelist.aspx">Cancel</asp:LinkButton>
                                <%--<button class="btn btn-primary float-right">Submit</button>--%>
                                <asp:LinkButton CssClass="btn btn-primary ripple m-1 float-right" runat="server" ID="lnkSubmit" OnClick="lnkSubmit_Click">Submit</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</asp:Content>
