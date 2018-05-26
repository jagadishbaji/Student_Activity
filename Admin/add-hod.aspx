<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add-hod.aspx.cs" Inherits="Admin_add_hod" %>

<%@ Register Src="~/Admin/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/Admin/Side.ascx" TagPrefix="uc1" TagName="Side" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   <head>
 <meta charset="UTF-8"/>
        <title>Student Activity</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'/>
       <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />

    <link href="../css/admin-section.css" rel="stylesheet" type="text/css" />
    <link href="../css/custom.css" rel="stylesheet" type="text/css" />
    <link href="../js/plugins/croppic/css/croppic.css" rel="stylesheet" />
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

</head><body class="skin-black">
    <form id="form1" runat="server">
        <uc1:head runat="server" ID="head" />
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <uc1:Side runat="server" ID="Side" /> 
            <aside class="right-side">
                <section class="content-header">
                    <h1>Add HOD
                       
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="dashboard.aspx"><i class="fa fa-dashboard"></i>Home</a></li>
                        <li class="active">Manage HOD</li>
                    </ol>
                </section>

           
                          <!-- Main content -->
                <section class="content">

                      <div class="container">
                        <div class="col-lg-4">
                            <div >
                                <div >                                    
                                   
                                </div>
                                <div id="server-message"></div>
                                <div >
                                    
                                    <div class="form-group">
                                     <i class="fa fa-user"></i>    <label>Full Name</label>
                                       <asp:TextBox  ID="txt_name" CssClass="form-control" placeholder="Full name" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter FullName" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_name"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Enter Characters Only" ForeColor="Red" ControlToValidate="txt_name" ValidationExpression="[a-z A-Z]+"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                      <i class="fa fa-envelope"></i>   <label>Email ID</label>
                                        <asp:TextBox ID="txt_emailid" CssClass="form-control" placeholder="Email ID" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter EmailID" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_emailid"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid EmailId" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_emailid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                                    </div>

                                    <div class="form-group">
                                        <i class="fa fa-lock"></i>  <label>Password</label>
                                        <asp:TextBox ID="txt_password" TextMode="Password" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Password" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_name"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter Password" ForeColor="Red" ControlToValidate="txt_password" ValidationExpression="[a-z A-Z 0-9]+"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="msg" runat="server" fontsize="12"></asp:Label>
                                    </div>

                                </div>
                                <div class="box-footer clearfix">
                                    <asp:LinkButton ID="lnk_save" ValidationGroup="g1" class="pull-right btn btn-default" OnClick="lnk_save_Click" runat="server">Save <i class="fa fa-arrow-circle-right"></i></asp:LinkButton>
                                </div>
                            </div>
                       </div></div></section></aside>
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
