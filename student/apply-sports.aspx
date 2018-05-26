<%@ Page Language="C#" AutoEventWireup="true" CodeFile="apply-sports.aspx.cs" Inherits="student_apply_sports" %>


<%@ Register Src="~/student/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/student/Side.ascx" TagPrefix="uc1" TagName="Side" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Activity</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'/>

    <link href="../Admin/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />

    <link href="../css/admin-section.css" rel="stylesheet" type="text/css" />
    <link href="../css/custom.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
</head>
<body class="skin-black">
    <form id="form1" runat="server">
         <uc1:head runat="server" ID="head" />     
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <uc1:Side runat="server" ID="Side" />
            <aside class="right-side">
                <br /><br /><br />
                <section class="content-header">
                    <h1>Apply For Sports 2018
                       
                   
                    </h1>
                    <ol class="breadcrumb">
                        <li class="active">Apply Placement</li>
                    </ol>
                </section>
                <section class="content">
                    <div class="container">
                        <div class="col-lg-4">
                            <div >
                                <div >
                                </div>
                                <div id="server-message"></div>
                                <div >

                                    <div class="form-group">
                                        <i class="fa fa-user"></i>
                                        <label>Full Name</label>
                                        <asp:TextBox ID="txt_name" CssClass="form-control" placeholder="Full name" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter FullName" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_name"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Enter Characters Only" ForeColor="Red" ControlToValidate="txt_name" ValidationExpression="[a-z A-Z]+"></asp:RegularExpressionValidator>
                                    </div>

                                    <div class="form-group">
                                         <i class="fa fa-user"></i>
                                        <label>Gender</label>
                                        <asp:DropDownList ID="dd_gender" runat="server" ForeColor="#0099FF" Height="24px" Width="222px">

                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <i class="fa fa-home"></i>
                                        <label>Address</label>
                                        <asp:TextBox ID="txt_address" CssClass="form-control" placeholder="Address" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter address" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_address"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator5" Display="Dynamic" runat="server" ErrorMessage="Enter Characters Only" ForeColor="Red" ControlToValidate="txt_address" ValidationExpression="[a-z A-Z 0-9]+"></asp:RegularExpressionValidator>
                                    </div>


                                    <div class="form-group">
                                        <i class="fa fa-envelope"></i>
                                        <label>Email ID</label>
                                        <asp:TextBox ID="txt_emailid" CssClass="form-control" placeholder="Email ID" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Email ID" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_emailid"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid EmailId" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_emailid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                        <i class="fa fa-mobile"></i>
                                        <label>Mobile</label>
                                        <asp:TextBox ID="txt_mobile" CssClass="form-control" placeholder="Mobile Num" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Number" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_mobile"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator4" Display="Dynamic" runat="server" ErrorMessage="Enter 10 digits" ForeColor="Red" ControlToValidate="txt_mobile" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                    </div>


                                    <div class="form-group">
                                        <i class="fa fa-trophy"></i>
                                        <label>Sports</label>
                                        <asp:DropDownList ID="dd_sports" runat="server" ForeColor="#0099FF" Height="24px" Width="222px">
                                            <asp:ListItem>Select Sports.</asp:ListItem>
                                            <asp:ListItem>Cricket</asp:ListItem>
                                            <asp:ListItem>FootBall</asp:ListItem>
                                            <asp:ListItem>BasketBall</asp:ListItem>
                                             <asp:ListItem>Carrom</asp:ListItem>
                                            <asp:ListItem>Chess</asp:ListItem>
                                            <asp:ListItem>TableTennis</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                         <i class="fa fa-building"></i>
                                        <label>Department</label>
                                        <asp:DropDownList ID="dd_dept" runat="server" ForeColor="#0099FF" Height="24px" Width="222px">
                                            <asp:ListItem>Select Dept.</asp:ListItem>
                                            <asp:ListItem>CS</asp:ListItem>
                                            <asp:ListItem>Electrical</asp:ListItem>
                                            <asp:ListItem>Mech.</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>



                                    <div class="box-footer clearfix">
                                        <asp:LinkButton ID="lnk_save" ValidationGroup="g1" class="pull-right btn btn-default" OnClick="lnk_save_Click" runat="server">Apply<i class="fa fa-arrow-circle-right"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                </section>

            </aside>
            <!-- /#page-wrapper -->
        </div>
        <!-- /#wrapper -->
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
