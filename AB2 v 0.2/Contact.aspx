<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
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
<div class="container">
<div id="contact" class="container-fluid bg-grey">
   <center><h3 class="page-header">Contact</center>
   <ol class="breadcrumb">
                    <li><a href="Default.aspx">Home</a>
                    </li>
                    <li class="active">Contact</li>
                </ol>
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

