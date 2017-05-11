<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Vegetables.aspx.cs" Inherits="Vegetables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    function div1() {
        $("#div1").css("display", "block");
        $("#div2").css("display", "none");
        $("#div3").css("display", "none");
        $("#div4").css("display", "none");
        $("#div5").css("display", "none");

    }

    function div2() {
        $("#div1").css("display", "none");
        $("#div2").css("display", "block");
        $("#div3").css("display", "none");
        $("#div4").css("display", "none");
        $("#div5").css("display", "none");

    }
    function div3() {
        $("#div1").css("display", "none");
        $("#div2").css("display", "none");
        $("#div3").css("display", "block");
        $("#div4").css("display", "none");
        $("#div5").css("display", "none");

    }
    function div4() {
        $("#div1").css("display", "none");
        $("#div2").css("display", "none");
        $("#div3").css("display", "none");
        $("#div4").css("display", "block");
        $("#div5").css("display", "none");

    }
    function div5() {
        $("#div1").css("display", "none");
        $("#div2").css("display", "none");
        $("#div3").css("display", "none");
        $("#div4").css("display", "none");
        $("#div5").css("display", "block");

    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Vegetables
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Default.aspx">Home</a>
                    </li>
                    <li class="active">Vegetables</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Projects Row -->
        <div class="row" id="div1" style="display:block;">
        <center>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/cauliflower.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Cauliflower</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/chinese_eggplant.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Chinese-Eggplant</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/chayote.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Chayote</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/cilantro.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Cilantro</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/curry_leaves.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Curry Leaves</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/daikon.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Daikon</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/dosakayi.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Dosakai</a>
                </h3>
            </div>
             
                <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/dill.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Dill (baby deoul)</a>
                </h3>
            </div></center>
        </div>
          <div class="row" id="div2" style="display:none;">
        <center>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/drum_sticks.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Drumstick Leaves(malangi Leaf)</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/drumsticks.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Drumsticks</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/cocunut.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Fresh Coconut</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/garlic.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Garlic</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/ginger.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Ginger</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/gongura.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Gongura Leaves</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/green_banana.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Green Banana (Saba)</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/green_mango.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Green Mango</a>
                </h3>
            </div>
             </center>
        </div>
        <div class="row" id="div3" style="display:none;">
        <center>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/green_valor.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Green Valor</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/green_beans.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Green Beans</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/green_bell_peppers.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Green Bell Pepper</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/guava.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Guava</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/guavar_beans.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Guvar Beans</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/indian_eggplant.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Indian Eggplant</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/karala.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Karala(Indian pucva)</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/lime.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Lime (Green)</a>
                </h3>
            </div>
            
             </center>
        </div>
        <div class="row" id="div4" style="display:none;">
        <center>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/mango_leaves.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Mango Leaves</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/methi_leaves.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Methi Leaves</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/mint.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Mint</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/okra.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Okra</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/onion.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Onion</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/opo.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Opo</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/pan_leaves.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Pan leaves</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/papdi.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Papdi</a>
                </h3>
            </div>
             </center>
        </div>
        <div class="row" id="div5" style="display:none;">
        <center>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/parval.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Parval</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/patra.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Patra</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/peeled_garlic.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Peeled Garlic</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/ripe_magos.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Ripe Mangoes</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/round_valor.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#" style="color:Red;">Round Valor</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/snake_guard.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Snake Gourd</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/tara_root.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Taro Root</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/thai_Chils.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Thai Chillis</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/thai_eggplant.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Thai Eggplant</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/tindora.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Tindoora</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/tamato.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Tomato</a>
                </h3>
            </div>
            <div class="col-md-4 img-portfolio">
                <a href="#">
                    <img class="img-responsive img-hover" src="vegetables/red_leaves,jpg.jpg" style="height:220px;width:200px;" alt="">
                </a>
                <h3>
                    <a href="#"style="color:Red;">Red Leaves(Zen choy)</a>
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
                     <li>
                        <a href="#" onclick="div4();">4</a>
                    </li>
                     <li>
                        <a href="#" onclick="div5();">5</a>
                    </li>
                   
                </ul>
            </div>
        </div>
    </div>
</asp:Content>

