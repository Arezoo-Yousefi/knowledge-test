<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlist.aspx.cs" Inherits="KnowledgeTest.userlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content-wrap sidenav-open d-flex flex-column">
        <div class="breadcrumb">
            <h1>User List</h1>

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
                                    <i class="search-icon text-muted i-Magnifi-Glass1"></i>
                                </div>
                                <div class="col-sm-2">
                                    <asp:LinkButton ID="likButton" CssClass="btn btn-primary" runat="server">Search</asp:LinkButton>
                                </div>
                                <div class="col-sm-8">
                                    <asp:LinkButton ID="likAddUser" CssClass="btn btn-success float-right m-1" runat="server" PostBackUrl="~/addUser.aspx">Add user</asp:LinkButton>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered" border="1">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">First Name</th>
                                            <th scope="col">Last Name</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Phone Number</th>
                                            <th scope="col">Picture</th>
                                            <th scope="col">User Type</th>
                                            <th scope="col">Created On</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td>Smith</td>
                                            <td>Doe</td>
                                            <td>Smith@gmail.com</td>
                                            <td>6042323200</td>
                                            <td>

                                                <img class="rounded-circle m-0 avatar-sm-table " src="/assets/images/faces/1.jpg" alt="">
                                            </td>
                                            <td>Admin</td>
                                            <td>Aug 24 2023</td>


                                            <td>
                                                <a href="edituser.aspx" class="text-success mr-2">
                                                    <i class="nav-icon i-Pen-2 font-weight-bold"></i>
                                                </a>
                                                <a href="#" onclick="javascript:return confirmDelete()" class="text-danger mr-2">
                                                    <i class="nav-icon i-Close-Window font-weight-bold"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">2</th>
                                            <td>Smith</td>
                                            <td>Doe</td>
                                            <td>Smith@gmail.com</td>
                                            <td>6042323200</td>
                                            <td>

                                                <img class="rounded-circle m-0 avatar-sm-table " src="/assets/images/faces/1.jpg" alt="">
                                            </td>
                                            <td>Admin</td>
                                            <td>Aug 24 2023</td>


                                            <td>
                                                <a href="edituser.aspx" class="text-success mr-2">
                                                    <i class="nav-icon i-Pen-2 font-weight-bold"></i>
                                                </a>
                                                <a href="#" onclick="javascript:return confirmDelete()" class="text-danger mr-2">
                                                    <i class="nav-icon i-Close-Window font-weight-bold"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">3</th>
                                            <td>Smith</td>
                                            <td>Doe</td>
                                            <td>Smith@gmail.com</td>
                                            <td>6042323200</td>
                                            <td>

                                                <img class="rounded-circle m-0 avatar-sm-table " src="/assets/images/faces/1.jpg" alt="">
                                            </td>
                                            <td>Admin</td>
                                            <td>Aug 24 2023</td>


                                            <td>
                                                <a href="edituser.aspx" class="text-success mr-2">
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
        <!-- end of col-->
        <!-- end of row-->
        <script>
            function confirmDelete() {
                confirm("You are going to delete a user!!")
            }
        </script>
    </div>


</asp:Content>
