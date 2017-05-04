using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.Script.Serialization;
using GPRSGPSServer;
using MySql.Data.MySqlClient;
using System.Data;
using System.Globalization;
using System.IO;
using System.Collections.Specialized;
using System.Net;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Net.Mail;
using System.Threading;
using FacebookAPI;
using Facebook;
using Facebook.Web;
using System.Drawing;
namespace callme
{

    /// <summary>
    /// Summary description for SchoolHandler
    /// </summary>
    public class SchoolHandler : IHttpHandler, IRequiresSessionState
    {
        public SchoolHandler()
        {
            //
            // TODO: Add constructor logic here
            //
        }


        public bool IsReusable
        {
            get { return true; }
        }
        static DateTime todaydate;

        class sessiondetails
        {
            public string sessionName { set; get; }
            public DateTime startdate { set; get; }
            public DateTime enddate { set; get; }
            public int rank { set; get; }
        }
        static sessiondetails session_Details = new sessiondetails();
        class GetJsonData
        {
            public string op { set; get; }
        }

        DBMgr dbm;
        public void ProcessRequest(HttpContext context)
        {
            try
            {
                

                dbm = new DBMgr();
                string operation = context.Request["op"];
                switch (operation)
                {
                    case "Leave_message":
                        Leave_message(context);
                        break;
                    case "getFBPosts":
                        getFBPosts(context);
                        break;
                    case "Apply_job":
                        Apply_job(context);
                        break;
                  case "getAdsDetails_actuals":
                        getAdsDetails_actuals(context);
                        break;
                         case "get_menu_details":
                        get_menu_details(context);
                        break;

                    default:


                        var jsonString = String.Empty;

                        context.Request.InputStream.Position = 0;
                        using (var inputStream = new StreamReader(context.Request.InputStream))
                        {
                            jsonString = HttpUtility.UrlDecode(inputStream.ReadToEnd());
                        }
                        if (jsonString != "")
                        {
                            var js = new JavaScriptSerializer();
                            GetJsonData obj = js.Deserialize<GetJsonData>(jsonString);
                            switch (obj.op)
                            {
                                //case "student_attendance_save":
                                //    student_attendance_save(jsonString, context);
                                //    break;
                            }
                        }
                        else
                        {
                            var js = new JavaScriptSerializer();
                            var title1 = context.Request.Params[1];
                            GetJsonData obj = js.Deserialize<GetJsonData>(title1);
                            switch (obj.op)
                            {


                            }

                        }
                        break;
                }

            }
            catch (Exception ex)
            {
                string response = GetJson(ex.Message);
                context.Response.Write(response);
            }

        }

        #region leave_message


        private void Leave_message(HttpContext context)
        {
            try
            {
                string emailid = context.Request["email"].ToString();
                string name = context.Request["name"].ToString();
                string subject = context.Request["subject"].ToString();
                string message = context.Request["message"].ToString();
                MailMessage Msg = new MailMessage();
                MailAddress fromMail = new MailAddress(emailid);
                // Sender e-mail address.
                Msg.From = fromMail;
                 const string password = "apna6020";
                // Recipient e-mail address.
                if (emailid == "")
                {
                    emailid = "noreply.apnachatbhavan@gmail.com";
                }
                Msg.To.Add(new MailAddress("contactus@apnachatbhavan.com"));
                // Subject of e-mail
                Msg.Subject = "Message From " + name + " , Email:" + emailid + "";
                Msg.Body += "<div style='background-color: #FE5615; font-family: Arial,Helvetica,sans-serif; font-size: 12px'><div style='width: 630px; height: 20px; padding: 10px;'></div><div style='width: 630px; min-height: 20px; padding: 10px; margin: 0 auto; background-color: #FE5615;'><p><div style='font-size: 35px; text-align: center;color:white; margin-bottom: 25px; font-weight: 300;'><a><b style='color:white;'><img src='http://apnabazaarpdx.com/img/logo.jpg' style='height:100px;width:250px;' /></b></a></div>Hello,iam " + name + "<br /><br /> " + message + "<br /><br />Contact me at " + emailid + "</p></div><div style='width: 630px; height: 20px; padding: 10px;'></div>";
                Msg.IsBodyHtml = true;
                //string sSmtpServer = "";
                //sSmtpServer = "smtp.gmail.com";
                //int portNumber = 587;
                //SmtpClient a = new SmtpClient(sSmtpServer, portNumber);
                //a.Host = sSmtpServer;
                //a.Credentials = new NetworkCredential("noreply.apnachatbhavan@gmail.com", password);
                //a.EnableSsl = true;
                SmtpClient a = new SmtpClient();
                a.Host = "relay-hosting.secureserver.net";
                a.Port = 25;
                a.Send(Msg);
                string strresponse = GetJson("Message successfully sent!");
                context.Response.Write(strresponse);

            }
            catch
            {
                string strresponse = GetJson("Invalid request!");
                context.Response.Write(strresponse);
            }
        }
        #endregion leave_message

        #region Apply_job

        //private void emp_files_upload(HttpContext context)
        //{

        //    try
        //    {
        //        if (context.Session["branch_id"] != null)
        //        {
        //            if (context.Request.Files.Count > 0)
        //            {
        //                string empsno = context.Request["empsno"].ToString();


        //                MySqlCommand cmd = new MySqlCommand("insert into         employee_files (employee_sno,file_description) values (@employee_sno,@file_description)");
        //                string description = context.Request["description"].ToString();

        //                cmd.Parameters.Add("@employee_sno", empsno);
        //                cmd.Parameters.Add("@file_description", description);

        //                long sno = dbm.insertScalar(cmd);


        //                HttpFileCollection files = context.Request.Files;
        //                for (int i = 0; i < files.Count; i++)
        //                {
        //                    HttpPostedFile file = files[i];
        //                    string[] extension = file.FileName.Split('.');
        //                    string upload_filename = "employee_" + empsno + "_" + sno + "." + extension[extension.Length - 1];

        //                }
        //                context.Response.ContentType = "text/plain";
        //                context.Response.Write("File Uploaded Successfully!");
        //            }
        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        string response = GetJson(ex.Message);
        //        context.Response.Write(response);
        //    }
        //}

        private void Apply_job(HttpContext context)
        {
            try
            {
                string emailid = context.Request["email"].ToString();
                string name = context.Request["name"].ToString();
                string subject = context.Request["subject"].ToString();
                string message = context.Request["message"].ToString();
                MailMessage Msg = new MailMessage();
                MailAddress fromMail = new MailAddress("noreply.apnachatbhavan@gmail.com");
                // Sender e-mail address.
                Msg.From = fromMail;
                //const string password = "apna6020";
                // Recipient e-mail address.
                if (emailid == "")
                {
                    emailid = "noreply.apnachatbhavan@gmail.com";
                }
                Msg.To.Add(new MailAddress("contactus@apnachatbhavan.com"));
                // Subject of e-mail
                Msg.Subject = "" + subject + "";
                Msg.Body += "<div style='background-color: #FE5615; font-family: Arial,Helvetica,sans-serif; font-size: 12px'><div style='width: 630px; height: 20px; padding: 10px;'></div><div style='width: 630px; min-height: 20px; padding: 10px; margin: 0 auto; background-color: #FE5615;'><p><div style='font-size: 35px; text-align: center; margin-bottom: 25px; font-weight: 300;'><a><b>APNA CHAT BHAVAN</b></a></div>Hello,iam " + name + "<br /><br /> " + message + "<br /><br />Contact me at " + emailid + "</p></div><div style='width: 630px; height: 20px; padding: 10px;'></div>";
                Msg.IsBodyHtml = true;
                //SmtpClient a = new SmtpClient();
                //a.Host = "relay-hosting.secureserver.net";
                //a.Port = 25;
                System.Net.Mail.Attachment attachment;
                HttpFileCollection files = context.Request.Files;
                for (int i = 0; i < files.Count; i++)
                {
                    HttpPostedFile file = files[i];
                    attachment = new System.Net.Mail.Attachment(file.InputStream, Path.GetFileName(file.FileName), file.ContentType);
                    Msg.Attachments.Add(attachment);

                }
                //string sSmtpServer = "";
                //sSmtpServer = "smtp.gmail.com";
                //int portNumber = 587;
                //SmtpClient a = new SmtpClient(sSmtpServer, portNumber);
                //a.Host = sSmtpServer;
                //a.Credentials = new NetworkCredential("noreply.apnachatbhavan@gmail.com", password);
                //a.EnableSsl = true;
                SmtpClient a = new SmtpClient();
                a.Host = "relay-hosting.secureserver.net";
                a.Port = 25;
                a.Send(Msg);
                string strresponse = GetJson("success");
                context.Response.Write(strresponse);

            }
            catch
            {
                string strresponse = GetJson("Invalid request!");
                context.Response.Write(strresponse);
            }
        }
        #endregion Apply_job

        #region veg_menu

        public class get_menu
        {
            public string food_type { set; get; }
            public string menu_type { set; get; }
            public string sno { set; get; }
            public string status { set; get; }
            public string food_name { set; get; }
            public string price { set; get; }
            public string desc { set; get; }
            public string image { set; get; }
            public string ftplocation { set; get; }
        }
        private void get_menu_details(HttpContext context)
        {
            try
            {
               
                    MySqlCommand cmd;
                    cmd = new MySqlCommand("SELECT menu_details.* FROM menu_details where status=1");
                    DataTable leaddata = dbm.SelectQuery(cmd).Tables[0];
                    List<get_menu> getAddleadslist = new List<get_menu>();
                    foreach (DataRow dr in leaddata.Rows)
                    {
                        get_menu ss = new get_menu();
                        ss.sno = dr["menuid"].ToString();
                        ss.menu_type = dr["menu_type"].ToString();
                        ss.food_type = dr["food_type"].ToString();
                        ss.food_name = dr["food_name"].ToString();
                        ss.price = dr["price"].ToString();
                        ss.desc = dr["description"].ToString();
                        ss.image = dr["image"].ToString();
                        ss.ftplocation = "ftp://apnadata:apna6020@107.180.46.223/";
                        ss.status = dr["status"].ToString();
                        getAddleadslist.Add(ss);
                    }
                    string response = GetJson(getAddleadslist);
                    context.Response.Write(response);
                
            }
            catch (Exception ex)
            {
                string response = GetJson(ex.ToString());
                context.Response.Write(response);
            }
        }

#endregion veg_menu

        #region fb_feeds

        class Posts
        {
            public string PostId { get; set; }
            public string PostStory { get; set; }
            public string PostMessage { get; set; }
            public string PostPictureUri { get; set; }
            public Image PostImage { get; set; }
            public string UserId { get; set; }
            public string UserName { get; set; }

        }


        private List<Posts> getFBPosts(HttpContext context)
        {
            //Facebook.FacebookClient myfacebook = new Facebook.FacebookClient();
            string AppId = "748261398644925";
            string AppSecret = "502ab74ab449ec6d82cbab2b8614147d";
            var client = new WebClient();

            string oauthUrl = string.Format("https://graph.facebook.com/oauth/access_token?type=client_cred&client_id={0}&client_secret={1}", AppId, AppSecret);

            string accessToken = "748261398644925|duqVVR6GgaXta4UgrzonQm3SgvY";

            FacebookClient myfbclient = new FacebookClient(accessToken);
            var parameters = new Dictionary<string, object>();
            parameters["fields"] = "id,message,full_picture ";
            string myPage = "288142251268992"; // put your page name
            dynamic result = myfbclient.Get(myPage + "/posts", parameters);

            List<Posts> postsList = new List<Posts>();
            int mycount = result.data.Count;

            for (int i = 0; i < result.data.Count; i++)
            {
                Posts posts = new Posts();
                posts.PostId = result.data[i].id;
                posts.PostPictureUri = result.data[i].full_picture;
                posts.PostMessage = result.data[i].message;
                if (posts.PostPictureUri != null)
                {
                    var request = WebRequest.Create(posts.PostPictureUri);
                    using (var response = request.GetResponse())
                    using (var stream = response.GetResponseStream())
                    {
                        posts.PostImage = Bitmap.FromStream(stream);
                    }
                }
                else
                {
                }
                
                postsList.Add(posts);
            }
            string response5 = GetJson(postsList);
            context.Response.Write(response5);
            return postsList;

        }

        #endregion fb_feeds

        #region ads_enable

        public class ads
        {
            public string Name { set; get; }
            public string sno { set; get; }
            public string status { set; get; }
        }
        private void getAdsDetails_actuals(HttpContext context)
        {
            try
            {

                MySqlCommand cmd;
                cmd = new MySqlCommand("SELECT  Ab_ads.ads_id, Ab_ads.Name, Ab_ads.status FROM Ab_ads");
                DataTable leaddata = dbm.SelectQuery(cmd).Tables[0];
                List<ads> getAddleadslist = new List<ads>();
                foreach (DataRow dr in leaddata.Rows)
                {
                    ads ss = new ads();
                    ss.sno = dr["ads_id"].ToString();
                    ss.Name = dr["Name"].ToString();
                    ss.status = dr["status"].ToString();
                    getAddleadslist.Add(ss);
                }
                string response = GetJson(getAddleadslist);
                context.Response.Write(response);

            }
            catch (Exception ex)
            {
                string response = GetJson(ex.ToString());
                context.Response.Write(response);
            }
        }
        #endregion ads_enable

        private static string GetJson(object obj)
        {
            JavaScriptSerializer jsonSerializer = new JavaScriptSerializer();
            jsonSerializer.MaxJsonLength = int.MaxValue;
            return jsonSerializer.Serialize(obj);
        }
    }
}

