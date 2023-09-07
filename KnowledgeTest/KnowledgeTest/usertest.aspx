<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usertest.aspx.cs" Inherits="KnowledgeTest.usertest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content-wrap sidenav-open d-flex flex-column">
        <div class="breadcrumb">
            <h1>Start Test</h1>
        </div>

        <div class="separator-breadcrumb border-top"></div>

        <div class="row offset-2" id="testTypeBox" runat="server">
            <div class="col-md-8">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="col-md-12 form-group mb-3">
                            <label for="phone">Test Type</label>
                            <asp:DropDownList ID="ddlTestType" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Select" Value="0"/>
                                <asp:ListItem Text="Class 5- English" Value="1" />
                                <asp:ListItem Text="Class 5- French" Value="2" />
                                <asp:ListItem Text="Class 7- English" Value="3" />
                                <asp:ListItem Text="Class 7- French" Value="4" />
                            </asp:DropDownList>

                        </div>
                        <%--<button class="btn btn-primary float-right">Submit</button>--%>
                        <asp:LinkButton CssClass="btn btn-primary ripple m-1 float-right" runat="server" OnClick="Unnamed1_Click">Submit</asp:LinkButton>
                        <asp:CompareValidator Display="Dynamic" ErrorMessage="Please select the test type" CssClass="text-danger font-weight-bold" ControlToValidate="ddlTestType"  Operator="NotEqual" ValueToCompare="0" runat="server" />
                        <asp:LinkButton CssClass="btn btn-dark  m-1 float-right " runat="server" CausesValidation="false" PostBackUrl="~/dashboard.aspx">Cancel</asp:LinkButton>

                    </div>
                </div>
            </div>
        </div>
        <div id="questionBox" class="row offset-2"  runat="server" visible="false">
            <div class="col-md-8">
                <div class="card mb-4">
                    <div id="contentPlaceHolder-Test" class="card-body">
                        <div class="card-title mb-3">Question Box</div>
                        <div class="row">
                            <asp:LinkButton ID="libAnswerA" class="form-control col-md-12 form-group mb-3" runat="server" OnClick="libAnswer_Click">A</asp:LinkButton>
                            <asp:LinkButton ID="libAnswerB" class="form-control col-md-12 form-group mb-3" runat="server" OnClick="libAnswer_Click">B</asp:LinkButton>
                            <asp:LinkButton ID="libAnswerC" class="form-control col-md-12 form-group mb-3" runat="server" OnClick="libAnswer_Click">C</asp:LinkButton> 
                            <asp:LinkButton ID="libAnswerD" class="form-control col-md-12 form-group mb-3" runat="server" OnClick="libAnswer_Click">D</asp:LinkButton>
                        </div>
                        <asp:LinkButton ID="libNext" CssClass="btn btn-primary ripple m-1 float-right" runat="server" OnClick="Unnamed1_Click" Visible="false">NEXT</asp:LinkButton>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
