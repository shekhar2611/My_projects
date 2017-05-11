<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="grocery.aspx.cs" Inherits="grocery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    function div1() {
        $("#div1").css("display", "block");
        $("#div2").css("display", "none");
        $("#div3").css("display", "none");

    }

    function div2() {
        $("#div1").css("display", "none");
        $("#div2").css("display", "block");
        $("#div3").css("display", "none");

    }
    function div3() {
        $("#div1").css("display", "none");
        $("#div2").css("display", "none");
        $("#div3").css("display", "block");
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Grocery
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Default.aspx">Home</a>
                    </li>
                    <li class="active">Grocery</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Projects Row -->
        <div class="row" id="div1" style="display:block;">
        <center>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/rice.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Rice / Rice products</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/atta.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Flour / Atta</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/dals.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Dals / Beans</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/instant miexes.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Instant Mixes</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/cannedfoods.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Canned Foods</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/soups.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Soups</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/masalas.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Spices / Masalas</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/pickles.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Chutneys / Sauces</a>
                </h3>
            </div>
             </center>
        </div>
          <div class="row" id="div2" style="display:none;">
        <center>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/indian_biskets.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Biscuits / Bakery</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/snacks.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Snacks</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/frozen food.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Frozen Food</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/frozen_vegetables.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Frozen Vegetables</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/red label.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Coffee / Tea</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/ghee.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Oil & Ghee</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/ginger.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Pickles / Pastes</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/instant_foods.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Instant foods - Ready to Eat</a>
                </h3>
            </div>
             </center>
        </div>
        <div class="row" id="div3" style="display:none;">
        <center>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/beauty.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Health & Beauty</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/ayurvedic_medicines.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Ayurvedic Medicines</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/cahapathis.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Fresh Chapathi & Rotis</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/household_jpg.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Household Items</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="groceries/sweets.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Sweets</a>
                </h3>
            </div>
            
             </center>
        </div>
        <!-- /.row -->

        <!-- Projects Row -->
        <!-- /.row -->

        <hr>

        <!-- Pagination -->
        <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                   
                    <li>
                        <a href="#" onclick="div1();">1</a>
                    </li>
                    <li>
                        <a href="#" onclick="div2();">2</a>
                    </li>
                    <li>
                        <a href="#" onclick="div3();">3</a>
                    </li>
                   
                </ul>
            </div>
        </div>
    </div>
</asp:Content>

