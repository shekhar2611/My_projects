<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    $(function () {
        getFBPosts();
        getAdsDetails_actuals();
    });
    var fb_posts;
    function getFBPosts() {
        var data = { 'op': 'getFBPosts' };
        var s = function (msg) {
            if (msg) {
                fb_posts = msg;
                display_fb_posts();
            }
            else {
                document.location = "Default.aspx";
            }
        }
        var e = function (x, h, e) {
            alert(e.toString());
        };
        callHandler(data, s, e);
    }

    function getAdsDetails_actuals() {
        var data = { 'op': 'getAdsDetails_actuals' };
        var s = function (msg) {
            if (msg) {
                var fb_enable = msg;
                for (var i = 0; i < fb_enable.length; i++) {
                    if (fb_enable[i].status == 1) {
                        $("#chck").css("display", "block");
                    }
                    else {
                        $("#chck").css("display", "none");
                    }
                }

            }
            else {
                document.location = "Default.aspx";
            }
        }
        var e = function (x, h, e) {
            alert(e.toString());
        };
        callHandler(data, s, e);
    }

    function display_fb_posts() {
        var results = "";
        for (var i = 0; i < 1; i++) {
            if (fb_posts[i].PostPictureUri != null) {
                var PostMessage = fb_posts[i].PostMessage;
                var PostPictureUri = fb_posts[i].PostPictureUri;
                results += '<center><a href="#"><img class="img-responsive" alt="img" src="' + fb_posts[i].PostPictureUri + '"/></a></center> </br>';
                $("#fb_posts_display").html(results);
            }
        }

    }
    function empty_leave_message() {
        document.getElementById('name').value = "";
        document.getElementById('email').value = "";
        document.getElementById('subject').value = "";
        document.getElementById('message').value = ""
    }

    function Leave_message() {
        var name = document.getElementById('name').value;
        if (name == null || name == "") {
            document.getElementById("name").focus();
            check_name();
            return false;
        }
        var email = document.getElementById('email').value;
        if (email == null || email == "") {
            document.getElementById("email").focus();
            check_mail();
            return false;
        }

        var subject = document.getElementById('subject').value;
        if (subject == null || subject == "") {
            document.getElementById("subject").focus();
            check_subject();
            return false;
        }

        var message = document.getElementById('message').value;
        if (message == null || message == "") {
            document.getElementById("message").focus();
            check_message();
            return false;
        }

        var data = { 'op': 'Leave_message', 'name': name, "email": email, "subject": subject, "message": message };
        var s = function (msg) {
            if (msg) {
                if (msg == "Message successfully sent!") {
                    loading_gif_stop();
                    Message_success();
                    empty_leave_message();
                }
                else {
                    loading_gif_stop();
                    Message_failed();
                    empty_leave_message();
                }

            }
            else {
                document.location = "Default.aspx";
            }
        }
        var e = function (x, h, e) {
            alert(e.toString());
        };
        callHandler(data, s, e);
        loading_gif_start();
    }



    function loading_gif_start() {

        $("#gif_load").css("display", "block");


    }
    function loading_gif_stop() {

        $("#gif_load").css("display", "none");


    }

    function check_mail() {
        $("#check_mail").css("display", "block");
        $("#check_name").css("display", "none");
        $("#check_subject").css("display", "none");
        $("#check_message").css("display", "none");
    }
    function check_name() {
        $("#check_mail").css("display", "none");
        $("#check_name").css("display", "block");
        $("#check_subject").css("display", "none");
        $("#check_message").css("display", "none");
    }
    function check_subject() {
        $("#check_mail").css("display", "none");
        $("#check_name").css("display", "none");
        $("#check_subject").css("display", "block");
        $("#check_message").css("display", "none");
    }
    function check_message() {
        $("#check_mail").css("display", "none");
        $("#check_name").css("display", "none");
        $("#check_subject").css("display", "none");
        $("#check_message").css("display", "block");
    }
    function check_data() {
        $("#check_mail").css("display", "none");
        $("#check_name").css("display", "none");
        $("#check_subject").css("display", "none");
        $("#check_message").css("display", "none");
    }
    function Message_success() {
        $("#Message_failed").css("display", "none");
        $("#Message_success").css("display", "block");
        $("#check_message").css("display", "none");
    }
    function Message_failed() {
        $("#Message_failed").css("display", "block");
        $("#Message_success").css("display", "none");
        $("#check_message").css("display", "none");

    }
      
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="img/5.jpg"  alt="New York">
    </div>
    <div class="item">
      <img src="img/grocery.jpg"  alt="New York">
    </div>
    <div class="item">
      <img src="img/4.jpg"  alt="New York">
    </div>
  
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    <!-- Page Content -->
    <div class="container">
        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <center><h3 class="page-header">
                    Welcome to Apna Bazaar
                </h3></center>

                <br />
                <div class="container"><marquee style="color:red;"><h3><b>Welcome to Apna Bazaar</b></h3> </marquee></div>
                <br />
                <br />
                <div class="container" id="chck" style="display:none;">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">        
          <div class="img-responsive">
            <a href="#"><center><img class="img-responsive" src="img/offers.gif" alt="offers"></center>
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
          <div class="col-lg-12">
            <div class="img-responsive" id="fb_posts_display">
          </div>
        </div>
      </div>
    </div>
    </div>
<br /><br />
        <div class="row">
            <div class="col-lg-12">

                <ul id="myTab" class="nav nav-tabs nav-justified">
                    <li class="active"><a href="#service-one" data-toggle="tab"><i class="fa fa-tree"></i> Grocery</a>
                    </li>
                    <li class=""><a href="#service-two" data-toggle="tab"><i class="fa fa-tree"></i> Vegetables</a>
                    </li>
                    <li class=""><a href="#service-three" data-toggle="tab"><i class="fa fa-tree"></i> Bakery</a>
                    </li>
                </ul>

                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade active in" id="service-one">
                    <br />
                         <div class="col-md-4 col-sm-6">
                  <center>  <img class="img-responsive img-portfolio img-hover" src="groceries/rice.jpg" alt=""/></center>
            </div>
            <div class="col-md-4 col-sm-6">
                  <center>  <img class="img-responsive img-portfolio img-hover" src="groceries/atta.jpg" alt=""/></center>
            </div>
            <div class="col-md-4 col-sm-6">
                  <center>  <img class="img-responsive img-portfolio img-hover" src="groceries/ghee.jpg" alt=""/></center>
            </div>
            <div class="col-md-4 col-sm-6">
                  <center>  <img class="img-responsive img-portfolio img-hover" src="groceries/beauty.jpg" alt=""/></center>
            </div>
             <div class="col-md-4 col-sm-6">
                  <center>  <img class="img-responsive img-portfolio img-hover" src="groceries/pickles.jpg" alt=""/></center>
            </div>
             <div class="col-md-4 col-sm-6">
                  <center>  <img class="img-responsive img-portfolio img-hover" src="groceries/red label.jpg" alt=""/></center>
            </div>
                    </div>
                    <div class="tab-pane fade" id="service-two">
                     <br />
                         <div class="col-md-4 col-sm-6">
                   <center> <img class="img-responsive img-portfolio img-hover" src="vegetables/cauliflower.jpg" alt=""></center>
            </div>
            <div class="col-md-4 col-sm-6">
                   <center> <img class="img-responsive img-portfolio img-hover" src="vegetables/cilantro.jpg" alt=""></center>
            </div>
            <div class="col-md-4 col-sm-6">
                  <center>  <img class="img-responsive img-portfolio img-hover" src="vegetables/indian_eggplant.jpg" alt=""></center>
            </div>
            <div class="col-md-4 col-sm-6">
                  <center>  <img class="img-responsive img-portfolio img-hover" src="vegetables/green_mango.jpg" alt=""></center>
            </div>
                    <div class="col-md-4 col-sm-6">
                  <center>  <img class="img-responsive img-portfolio img-hover" src="vegetables/guava.jpg" alt=""></center>
            </div>
            <div class="col-md-4 col-sm-6">
                  <center>  <img class="img-responsive img-portfolio img-hover" src="vegetables/okra.jpg" alt=""></center>
            </div>
                    </div>
                    <div class="tab-pane fade" id="service-three">
                     <br />
                            <div class="col-md-4 col-sm-6">
                  <center>  <img class="img-responsive img-portfolio img-hover" src="bakery/13.jpg" alt=""></center>
            </div>
            <div class="col-md-4 col-sm-6">
                  <center><img class="img-responsive img-portfolio img-hover" src="bakery/12.jpg" alt=""></center>  
            </div>
            <div class="col-md-4 col-sm-6">
                 <center> <img class="img-responsive img-portfolio img-hover" src="bakery/1.jpg" alt=""></center>  
            </div>
                    </div>
                </div>

            </div>
        </div>

            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Section -->
        <!-- Footer -->
        <br />
        <div id="contact" class="container-fluid bg-grey">
   <center><h3 class="page-header">Contact</center>
  <div class="row">
    <div class="col-sm-5">
      <p style="color:Red;">Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Apna Bazaar
6, 1815 NW 169th Place #6022,Beaverton, OR 97006.</p>
      <p><span class="glyphicon glyphicon-phone"></span><a href="tel:503-533-0424">+1 503-533-0424</a> </p>
      <p><span class="glyphicon glyphicon-envelope"></span><a href="mailto:contactus@apnabazaarpdx.com">  contactus@apnabazaarpdx.com</a></p>
    </div>
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
          <input class="form-control" id="subject" name="email" placeholder="Subject" type="email" required>
          <br />
      <textarea class="form-control" id="message" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
         <center> <button class="btn btn-primary" type="button" onclick="Leave_message();">Send Message</button><div id="gif_load" style="display:none;" ><img  src="images/loader.gif" alt="" style="height:40px;width:40px"/></center>
           
        </div>
       <br /></div> <br />
                 <br /><div id="Message_failed" class="s-12 alert alert-danger" style="display:none;"><center><p style="color:red"><b>Message Sending Failed!</b></p><center></div> 
                  <div id="Message_success" class="s-12 alert alert-success" style="display:none;"><center><p style="color:Green"><b>Thank You for Contacting us! We will contact u within short time..</b></p></center></div> 
      </div>
    </div>
  </div>
  <br />
  <br />
             <iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d44718.1334851635!2d-122.8889948234214!3d45.532553049949755!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x54950f38ed029479%3A0x52396cc587de636f!2sapna+bazar!3m2!1d45.5325584!2d-122.85397549999999!5e0!3m2!1sen!2sus!4v1475618862434" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen=""></iframe>

</div>
</asp:Content>

