<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="myprofile.aspx.cs" Inherits="KnowledgeTest.myprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="main-content-wrap sidenav-open d-flex flex-column">
            <div class="breadcrumb">
                <h1>My Profile</h1>
                
            </div>

            <div class="separator-breadcrumb border-top"></div>

            <div class="card user-profile o-hidden mb-4">
                <div class="header-cover" style="background-image: url('assets/images/photo-wide-4.jpg')"></div>
                <div class="user-info">
                    <img class="profile-picture avatar-lg mb-2" src="Images/IMG_0032.JPG" alt="">
                    <p class="m-0 text-24">Arezoo Yousefi</p>
                    
                </div>
                <div class="card-body">
                   

                    <div class="tab-content" id="profileTabContent">
                        
                        <div  id="about" role="tabpanel" aria-labelledby="about-tab">
                            <h4>Personal Information</h4>
                            
                            <hr>
                            <div class="row">
                                <div class="col-md-4 col-6">
                                    <div class="mb-4">
                                        <p class="text-primary mb-1"><i class="i-MaleFemale text-16 mr-1"></i> First Name</p>
                                        <span>Arezoo</span>
                                    </div>
                                    <div class="mb-4">
                                        <p class="text-primary mb-1"><i class="i-MaleFemale text-16 mr-1"></i>Last Name</p>
                                        <span>Yousefi</span>
                                    </div>
                                    <div class="mb-4">
                                        <p class="text-primary mb-1"><i class="i-Email text-16 mr-1"></i>Email Address</p>
                                        <span>are_yousefi@yahoo.com</span>
                                    </div>
                                </div>
                                <div class="col-md-4 col-6">
                                    <div class="mb-4">
                                        <p class="text-primary mb-1"><i class="i-Bell text-16 mr-1"></i> Phone Number</p>
                                        <span>7786370096</span>
                                    </div>
                                    <div class="mb-4">
                                        <p class="text-primary mb-1"><i class="i-Professor text-16 mr-1"></i> User Type</p>
                                        <span>Admin</span>
                                    </div>
                                    <%--<div class="mb-4">
                                        <p class="text-primary mb-1"><i class="i-Cloud-Weather text-16 mr-1"></i> Website</p>
                                        <span>www.ui-lib.com</span>
                                    </div>--%>
                                </div>
                                

            <!-- Footer Start -->
            <div class="flex-grow-1"></div>
            <div class="app-footer">
                <div class="row">
                    <div class="col-md-9">
                        <p><strong>Gull - Laravel + Bootstrap 4 admin template</strong></p>
                        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Libero quis beatae officia saepe perferendis voluptatum minima eveniet voluptates dolorum, temporibus nisi maxime nesciunt totam repudiandae commodi sequi dolor quibusdam
                            sunt.
                        </p>
                    </div>
                </div>
                <div class="footer-bottom border-top pt-3 d-flex flex-column flex-sm-row align-items-center">
                    <a class="btn btn-primary text-white btn-rounded" href="https://themeforest.net/user/mh_rafi" target="_blank">Buy
            Gull HTML</a>
                    <span class="flex-grow-1"></span>
                    <div class="d-flex align-items-center">
                        <img class="logo" src="assets/images/logo.png" alt="">
                        <div>
                            <p class="m-0">&copy; 2018 Gull HTML</p>
                            <p class="m-0">All rights reserved</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- fotter end -->
        </div>

</asp:Content>
