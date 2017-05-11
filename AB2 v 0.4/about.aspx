<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-md-12">
                <h1 class="page-header">About Us
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Default.aspx">Home</a>
                    </li>
                    <li class="active">About Us</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Intro Content -->
     <div class="row">

            <div class="col-md-6">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img class="img-responsive" src="img/about_us.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="img/rest.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="img/sree.jpg" alt="">
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>
            <div class="col-md-6" style="font-family:Calibri">
                <h2 style="color:Red;">About Apna Bazaar</h2>
               <p>APNA BAZAAR, one of the largest independent Indian Stores located in Greater Portland area. APNA BAZAAR is your one shop stop for all your Indian items from groceries, fresh vegetables, specialty items and all latest Indian movies.</p>
                <p align="justify" > Shoppers will have the option to choose from a wide range of quality products in every category ranging from Grocery, Vegetables, Dairy products, Ready To Eat items, Personal Care,Religious items, Utensils & Kitchen Appliances and much more.</p>
                <p align="justify">The APNA BAZAAR Store in Greater Portland area promises to elevate shopping from a daily chore to a comfy shopping experience that also offers value for money. "We want to take retailing to a new level and give the customer something she has never experienced before - the finest, freshest quality, widest choice, great value for money and friendly customer service - all packaged together for a truly enjoyable shopping experience".</p>
                <p align="justify">This is a customer-focused store which understands the needs of the consumers and aims to improve the quality of the shopping experience by bringing tried and tested solutions in lighting and retail merchandising.</p>
               </div>
                <div class="col-md-12" style="font-family:Calibri">
                <p align="justify"> We promise to deliver a compelling shopping experience to the families of Greater Portland by offering freshness, quality and wide range, value for money, uniqueness, authenticity and visual excitement. The intention is to move beyond simply meeting the product needs of consumers to offering a unique and unmatched shopping experience."</p>
                <p align="justify"> We love our customers and welcome your feedback and suggestions. Use our Contact Us page to tell us what we’re doing right or what we can improve on.</p>
           </div>

        </div>
        <!-- /.row -->

        <!-- Team Members -->

    </div>
</asp:Content>

