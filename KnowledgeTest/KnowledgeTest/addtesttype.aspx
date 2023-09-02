<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addtesttype.aspx.cs" Inherits="KnowledgeTest.addtesttype" %>

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
                                <asp:DropDownList runat="server" ID="ddlUserType" CssClass="form-control">
                                    <asp:ListItem Text="Select" Value="0" />
                                    <asp:ListItem Text="Class 5" Value="1" />
                                    <asp:ListItem Text="Class 7" Value="2" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator InitialValue="0" Display="Dynamic" ErrorMessage="Please select the type of the test" CssClass="text-danger font-weight-bold" ControlToValidate="ddlUserType" runat="server" />

                            </div>
                            <div class="col-md-6 form-group mb-3">
                                <label for="picker1">Language</label>
                                <asp:DropDownList runat="server" ID="ddlanguage" CssClass="form-control">
                                    <asp:ListItem Text="Select" Value="0" />
                                    <asp:ListItem Text="English" Value="1" />
                                    <asp:ListItem Text="French" Value="2" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator InitialValue="0" Display="Dynamic" ErrorMessage="Please select the language" CssClass="text-danger font-weight-bold" ControlToValidate="ddlUserType" runat="server" />

                            </div>
                           

                            <div class="col-md-12">
                                
                                <%--<button class="btn btn-primary">Submit</button>--%>
                            
                                <asp:LinkButton CssClass="btn btn-dark  m-1 float-right " runat="server" CausesValidation="false" PostBackUrl="~/testtypelist.aspx">Cancel</asp:LinkButton>
                                <%--<button class="btn btn-primary float-right">Submit</button>--%>
                                <asp:LinkButton CssClass="btn btn-primary ripple m-1 float-right" runat="server">Submit</asp:LinkButton>
                            </div>
                        </div>

                    </div>
                </div>
            </div>


        </div>
    </div>
</asp:Content>
