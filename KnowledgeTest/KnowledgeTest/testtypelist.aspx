<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="testtypelist.aspx.cs" Inherits="KnowledgeTest.testtypelist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content-wrap sidenav-open d-flex flex-column">
        <div class="breadcrumb">
            <h1>Test Type List</h1>

        </div>

        <div class="separator-breadcrumb border-top"></div>






        <div class="row mb-4">


            <div class="col-md-12 mb-3">
                <div class="card text-left">

                    <div class="card-body">

                        <div>
                            <div class="row">
                                <div class="col-sm-2">
                                    <asp:TextBox ID="txtSearch" CssClass="form-control" Placeholder="Search" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-sm-2">
                                    <asp:LinkButton ID="likButton" CssClass="btn btn-primary" runat="server">Search</asp:LinkButton>
                                </div>
                                <div class="col-sm-8">
                                    <asp:LinkButton ID="likAddUser" CssClass="btn btn-success float-right m-1" runat="server" PostBackUrl="~/addtesttype.aspx">Add Test Type</asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-sm-12 table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Test Type</th>
                                            <th scope="col">Language</th>
                                            <th scope="col">Created On</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td>Class 5</td>
                                            <td>English</td>
                                            <td>Aug 24 2023</td>
                                            <td><span class="badge badge-success">Active</span></td>
                                            <td>
                                                <a href="edittesttype.aspx" class="text-success mr-2">
                                                    <i class="nav-icon i-Pen-2 font-weight-bold"></i>
                                                </a>
                                                <a href="#" onclick="javascript:return confirmDelete()" class="text-danger mr-2">
                                                    <i class="nav-icon i-Close-Window font-weight-bold"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">2</th>
                                            <td>Class 5</td>
                                            <td>French</td>
                                            <td>Aug 23 2023</td>
                                            <td><span class="badge badge-success">Active</span></td>
                                            <td>
                                                <a href="edittesttype.aspx" class="text-success mr-2">
                                                    <i class="nav-icon i-Pen-2 font-weight-bold"></i>
                                                </a>
                                                <a href="#" onclick="javascript:return confirmDelete()" class="text-danger mr-2">
                                                    <i class="nav-icon i-Close-Window font-weight-bold"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">3</th>
                                            <td>Class 7</td>
                                            <td>English</td>
                                            <td>Jun 24 2023</td>
                                            <td><span class="badge badge-success">Active</span></td>
                                            <td>
                                                <a href="edittesttype.aspx" class="text-success mr-2">
                                                    <i class="nav-icon i-Pen-2 font-weight-bold"></i>
                                                </a>
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




        <script>
            function confirmDelete() {
                confirm("You are going to delete a test type!!")
            }
        </script>
    </div>

</asp:Content>
