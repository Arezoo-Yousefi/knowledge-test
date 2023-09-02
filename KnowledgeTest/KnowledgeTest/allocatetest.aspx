<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="allocatetest.aspx.cs" Inherits="KnowledgeTest.allocatetest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content-wrap sidenav-open d-flex flex-column">
        <div class="breadcrumb">
            <h1>Allocate Test Type</h1>
        </div>

        <div class="separator-breadcrumb border-top"></div>

        <div class="row">
            <div class="col-md-12">
                <div class="card mb-4">
                    <div class="card-body">


                        <div class="row">
                            <div class="col-md-4 form-group mb-3">
                                <label for="picker1">User</label>
                                <asp:DropDownList runat="server" ID="ddlUserType" CssClass="form-control">
                                    <asp:ListItem Text="Select" Value="0" />
                                    <asp:ListItem Text="Class 5" Value="1" />
                                    <asp:ListItem Text="Class 7" Value="2" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator InitialValue="0" Display="Dynamic" ErrorMessage="Please select the User" CssClass="text-danger font-weight-bold" ControlToValidate="ddlUserType" runat="server" />

                            </div>
                            <div class="col-md-4 form-group mb-3">
                                <label for="picker1">Test Type</label>
                                <asp:DropDownList runat="server" ID="ddlTestType" CssClass="form-control">
                                    <asp:ListItem Text="Select" Value="0" />
                                    <asp:ListItem Text="Class 5" Value="1" />
                                    <asp:ListItem Text="Class 7" Value="2" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator InitialValue="0" Display="Dynamic" ErrorMessage="Please select the type of the test" CssClass="text-danger font-weight-bold" ControlToValidate="ddlUserType" runat="server" />

                            </div>
                            <div class="col-md-4 form-group mb-3">
                                <label for="picker1">Language</label>
                                <asp:DropDownList runat="server" ID="ddlLanguage" CssClass="form-control">
                                    <asp:ListItem Text="Select" Value="0" />
                                    <asp:ListItem Text="English" Value="1" />
                                    <asp:ListItem Text="French" Value="2" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator InitialValue="0" Display="Dynamic" ErrorMessage="Please select the language" CssClass="text-danger font-weight-bold" ControlToValidate="ddlUserType" runat="server" />

                            </div>


                            <div class="col-md-12">

                                <%--<button class="btn btn-primary">Submit</button>--%>

                                <%--<button class="btn btn-primary float-right">Submit</button>--%>
                                <asp:LinkButton CssClass="btn btn-primary ripple m-1 float-right" runat="server">Submit</asp:LinkButton>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-12 table-responsive">
                                <table class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">User</th>
                                            <th scope="col">Test Type</th>
                                            <th scope="col">Language</th>
                                            <th scope="col">Created On</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td scope="row">1</td>
                                            <td>Smith Doe</td>
                                            <td>Class 5</td>
                                            <td>English</td>
                                            <td>Aug 12 2021</td>



                                            <td>
                                                <a href="#" onclick="javascript:return confirmDelete()" class="text-danger mr-2">
                                                    <i class="nav-icon i-Close-Window font-weight-bold"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td scope="row">1</td>
                                            <td>Smith Doe</td>
                                            <td>Class 7</td>
                                            <td>french</td>
                                            <td>Jul 12 2021</td>



                                            <td>
                                                <a href="#" onclick="javascript:return confirmDelete()" class="text-danger mr-2">
                                                    <i class="nav-icon i-Close-Window font-weight-bold"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td scope="row" class="auto-style1">1</td>
                                            <td class="auto-style1">Smith Doe</td>
                                            <td class="auto-style1">Class 5</td>
                                            <td class="auto-style1">English</td>
                                            <td class="auto-style1">Aug 12 2021</td>



                                            <td class="auto-style1">
                                                <a href="#" onclick="javascript:return confirmDelete()" class="text-danger mr-2">
                                                    <i class="nav-icon i-Close-Window font-weight-bold"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
