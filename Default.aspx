<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>login - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        
.login2background{    
    background-image: url(https://s13.postimg.org/8xs7irifb/education2.png);
    background-repeat:no-repeat;
    background-attachment: fixed;
    background-size: cover;
}
.loginbox{  
    background: white;
    color: black;    
    margin-top: 10%;
    left: 0;
    padding: 20px;   
    box-shadow: 0 8px 50px -2px #000;
    border-radius:5px;

}
.logo{
    width: 130px; 
    height: 55px;
    margin-left: 10%;
}
@media (max-width:767px) {
    .loginbox{ 
        margin-top: 10%;
    }    
}

.loginbox_content{
    padding:5% 11% 5% 11%;

}

.singtext{
    font-family: "Open Sans",sans-serif;
    font-size: 27px;  
    color: #82C226;
    float: right;
    padding-right: 25%;
}

.submit-btn{
    float: right;
    margin-right: 28%;
}

.forgotpassword{
    padding-left: 10%;
}
@media (max-width:800px) {
    .submit-btn{
        
        margin-right: 23%;
    }

   
}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>
<body class="login2background">
     
     <form id="form1" runat="server">
    <div class="container">  
            <div class="col-lg-6 col-md-6 col-sm-8  loginbox">
                <div class=" row">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-6">
                        <img src="https://s4.postimg.org/64q1bgunx/logo_3.png"  class="logo"> 
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6  ">
                        <span class="singtext" >Sign in </span>   
                    </div>
                                 
                </div>
                  <div id="server-message"></div>
                <div class=" row loginbox_content ">                        
                    <div class="input-group input-group-sm" >
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-user"></span>
                        </span>
                       <asp:TextBox ID="txt_emailid" runat="server" class="form-control" placeholder="Email ID"></asp:TextBox>
                            <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter EmailID" ControlToValidate="txt_emailid"></asp:RequiredFieldValidator>

                    </div>
                    <br>
                    <div class="input-group input-group-sm">
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-lock"></span>
                        </span>
                       <asp:TextBox ID="txt_password" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>                            
                            <asp:RequiredFieldValidator  Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="txt_password"></asp:RequiredFieldValidator>
                        
                    </div>              
                </div>
                <div class="row ">                   
                    <div class="col-lg-8 col-md-8  col-sm-8 col-xs-7 forgotpassword "> 
                        <label>Select Login Type</label>
                            <div class="form-group">
                            <asp:DropDownList ID="dd_login" runat="server">
                                <asp:ListItem>Select-type</asp:ListItem>
                                 <asp:ListItem>Student</asp:ListItem>
                                <asp:ListItem>Faculty</asp:ListItem>
                                <asp:ListItem>Principal</asp:ListItem>
                                <asp:ListItem>Placement</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>
                            </asp:DropDownList>
                                </div>                        
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4  col-xs-5 ">                        
                       
                        <asp:LinkButton class=" btn btn-default submit-btn" ID="lnk_login_Click" runat="server" OnClick="lnk_login_Click_Click">Sign-In</asp:LinkButton>
                         
                    </div>

                </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">Home</a>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-4 ">
              
            </div>


        </div>
  <script src="../js/jquery.js"></script>
        <!-- Bootstrap -->
        <script src="../js/bootstrap.min.js"></script>

        <!-- AdminLTE App -->
        <script src="../js/AdminLTE/app.js"></script>
        <script src="../js/plugins/croppic/js/croppic.min.js"></script>
        <script>
            function showalert(type, message) {
                if (type == "success")
                    var content = '<div class="alert alert-success alert-dismissable"><i class="fa fa-check"></i><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button><b>Success!</b> ' + message + '.</div>';
                if (type == "error")
                    var content = '<div class="alert alert-danger alert-dismissable"><i class="fa fa-ban"></i><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button><b>Alert!</b> ' + message + '.</div>';
                if (type == "warning")
                    var content = '<div class="alert alert-warning alert-dismissable"><i class="fa fa-warning"></i><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button><b>Warning!</b> ' + message + '.</div>';

                $("#server-message").empty().append(content);
            }



        </script>   
    </form>
</body>
</html>