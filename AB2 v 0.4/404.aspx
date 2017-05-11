<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="404.aspx.cs" Inherits="_404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Error
                    <small>Page Not Found</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Default.aspx">Home</a>
                    </li>
                    <li class="active">Error</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <div class="row">

            <div class="col-lg-12">
                <div class="jumbotron">
                    <p>The page you're looking for could not be found. Here are some helpful links to get you back on track:</p>
                    <ul>
                        <li>
                            <a href="Default.aspx">Home</a>
                        </li>
                        <li>
                            <a href="about.aspx">About</a>
                        </li>
                        <li>
                            <a href="grocery.aspx">Grocery</a>
                        </li>
                         <li>
                            <a href="Vegetables.aspx">Vegetables</a>
                        </li>
                        <li>
                            <a href="Contact.aspx">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
</div>
</asp:Content>

