<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="testmasterlist.aspx.cs" Inherits="KnowledgeTest.testmasterlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-content-wrap sidenav-open d-flex flex-column">
        <div class="breadcrumb">
            <h1>Test Master List</h1>

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
                                    <asp:LinkButton ID="likAddUser" CssClass="btn btn-success float-right m-1" runat="server" PostBackUrl="~/addtestmaster.aspx">Add Test Master</asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-sm-12 table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">NO</th>
                                            <th scope="col">Test Type</th>
                                            <th scope="col">Language</th>
                                            <th scope="col">Question</th>
                                            <th scope="col">Question Image</th>
                                            <th scope="col">Answer (a)</th>
                                            <th scope="col">Answer (b)</th>
                                            <th scope="col">Answer (c)</th>
                                            <th scope="col">Answer (d)</th>
                                            <th scope="col">Correct Answer</th>
                                            <th scope="col">Created On</th>
                                            <th scope="col">Created By</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td scope="row">1</td>
                                            <td>Class 5</td>
                                            <td>English</td>
                                            <td>Question</td>
                                            <td>
                                                <img width="50px" src="Images/1.gif" /></td>
                                             <td>Answer (A)</td>
                                             <td>Answer (B)</td>
                                             <td>Answer (C)</td>
                                             <td>Answer (D)</td>
                                             <td>B</td>
                                            <td>Aug 12 2021</td>
                                            <td>Arezoo</td>
                                            
                                            <td><span class="badge badge-success">Active</span></td>
                                            <td>
                                                <a href="edittestmaster.aspx" class="text-success mr-2">
                                                    <i class="nav-icon i-Pen-2 font-weight-bold"></i>
                                                </a>
                                                <a href="#" onclick="javascript:return confirmDelete()" class="text-danger mr-2">
                                                    <i class="nav-icon i-Close-Window font-weight-bold"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td scope="row">2</td>
                                            <td>Class 5</td>
                                            <td>English</td>
                                            <td>Question</td>
                                            <td>
                                                <img width="50px" src="Images/2.gif" /></td>
                                             <td>Answer (A)</td>
                                             <td>Answer (B)</td>
                                             <td>Answer (C)</td>
                                             <td>Answer (D)</td>
                                             <td>D</td>
                                            <td>Aug 22 2021</td>
                                            <td>Arezoo</td>
                                            
                                            <td><span class="badge badge-success">Active</span></td>
                                            <td>
                                                <a href="edittestmaster.aspx" class="text-success mr-2">
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
 

    </div>
   
    <script>
        function confirmDelete() {
            confirm("You are going to delete a test Master!!")
        }
    </script>
</asp:Content>
