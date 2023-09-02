<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="KnowledgeTest.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content-wrap sidenav-open d-flex flex-column">

        <div class="breadcrumb">
            <h1 class="mr-2">Dashboard</h1>

        </div>
        <div class="separator-breadcrumb border-top"></div>

        <div class="row">
            <div class="col-lg-6 col-md-12">
                <!-- CARD ICON -->
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="card card-icon mb-4">
                            <div class="card-body text-center">
                                <i class="i-Data-Upload"></i>
                                <p class="text-muted mt-2 mb-2">Total Students</p>
                                <p class="text-primary text-24 line-height-1 m-0">11</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="card card-icon mb-4">
                            <div class="card-body text-center">
                                <i class="i-Add-User"></i>
                                <p class="text-muted mt-2 mb-2">New Students</p>
                                <p class="text-primary text-24 line-height-1 m-0">10</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="card card-icon mb-4">
                            <div class="card-body text-center">
                                <i class="i-Data-Upload"></i>
                                <p class="text-muted mt-2 mb-2">Test Types</p>
                                <p class="text-primary text-24 line-height-1 m-0">4</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="card card-icon mb-4">
                            <div class="card-body text-center">
                                <i class="i-Data-Upload"></i>
                                <p class="text-muted mt-2 mb-2">Total Attempt</p>
                                <p class="text-primary text-24 line-height-1 m-0">62</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="card card-icon mb-4">
                            <div class="card-body text-center">
                                <i class="i-Data-Upload"></i>
                                <p class="text-muted mt-2 mb-2">Passed Attempt</p>
                                <p class="text-primary text-24 line-height-1 m-0">42</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="card card-icon mb-4">
                            <div class="card-body text-center">
                                <i class="i-Data-Upload"></i>
                                <p class="text-muted mt-2 mb-2">Failed Attempt</p>
                                <p class="text-primary text-24 line-height-1 m-0">21</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="col-lg-6 col-md-12">
                <div class="card mb-4">
                    <div class="card-body p-0">
                        <h5 class="card-title m-0 p-3">Students Test</h5>
                        <div id="echart4" style="height: 300px"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-7 col-md-12">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="card-title">Students Report</div>
                        <div id="echartBar" style="height: 300px;"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5 col-sm-12">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="card-title">Test Types</div>
                        <div id="echartPie" style="height: 300px;"></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Start -->
        <div class="flex-grow-1"></div>
        <div class="app-footer">
            <div class="row">
                <div class="col-md-9">
                    <p><strong>Gull - Laravel + Bootstrap 4 admin template</strong></p>
                    <p>
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Libero quis beatae officia saepe perferendis voluptatum minima eveniet voluptates dolorum, temporibus nisi maxime nesciunt totam repudiandae commodi sequi dolor quibusdam
                            sunt.
                       
                    </p>
                </div>
            </div>
            <div class="footer-bottom border-top pt-3 d-flex flex-column flex-sm-row align-items-center">
                <a class="btn btn-primary text-white btn-rounded" href="https://themeforest.net/user/mh_rafi" target="_blank">Buy
                        Gull HTML</a>
                <span class="flex-grow-1"></span>
                <div class="d-flex align-items-center">
                    <img class="logo" src="./assets/images/logo.png" alt="">
                    <div>
                        <p class="m-0">&copy; 2018 Gull HTML</p>
                        <p class="m-0">All rights reserved</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- fotter end -->
        


        
        <script src="assets/js/vendor/echarts.min.js"></script>
        <script src="assets/js/es5/echart.options.min.js"></script>
        <script src="assets/js/es5/dashboard.v1.script.js"></script>
        <script src="assets/js/vendor/datatables.min.js"></script>
        <script src="assets/js/es5/dashboard.v2.script.js"></script>
        



    </div>
</asp:Content>
