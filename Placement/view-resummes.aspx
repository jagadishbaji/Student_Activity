<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view-resummes.aspx.cs" Inherits="Placement_view_students" %>

<%@ Register Src="~/Placement/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/Placement/Side.ascx" TagPrefix="uc1" TagName="Side" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Activity</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>

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
                <section class="content-header">
                    <h1>Select Students                     
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="dashboard.aspx"><i class="fa fa-dashboard"></i>Home</a></li>
                        <li class="active">Select Students</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">

                    <div class="container">
                        <div class="col-lg-4">
                            <div >
                                <div >
                                    <h3 ></h3>
                                </div>
                                <div id="server-message"></div>
                                <div >

                                    <div class="form-group">
                                        <label>
                                            Name
                                        </label>
                                        <asp:TextBox ID="txt_name" CssClass="form-control" placeholder="Full name" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Full Name" ValidationGroup="g1" ForeColor="Red" ControlToValidate="txt_name"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator1" ControlToValidate="txt_name" ValidationExpression="[a-z A-Z]+" runat="server" ErrorMessage="Enter Characters Only" ForeColor="Red" ValidationGroup="g1"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Email</label>


                                        <asp:TextBox ID="txt_email" runat="server" Placeholder="Enter Email" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter EmailId" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_email"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid EmailId" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                    </div>




                                </div>
                                <div class="box-footer clearfix">
                                    <asp:LinkButton ID="lnk_save" class="pull-right btn btn-default" OnClick="lnk_save_Click" ValidationGroup="g1" runat="server">Save <i class="fa fa-arrow-circle-right"></i></asp:LinkButton>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-lg-11">
                            <asp:Panel ID="pnl_rpt" runat="server">
                                <div >
                                    <div >
                                        <h3 >List of Students</h3>
                                    </div>
                                    <div >
                                             <div class="table-responsive">
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td>Name</td>
                                                <td>Gender</td>
                                                <td>Address</td>
                                                <td>Email</td>
                                                <td>Mobile</td>
                                                <td>Skills</td>
                                                <td>Department</td>
                                            </tr>

                                            <asp:Repeater ID="rpt_student" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%# Eval("Name") %></td>
                                                        <td><%# Eval("gender") %></td>
                                                        <td><%# Eval("address") %></td>
                                                        <td><%# Eval("email") %></td>
                                                        <td><%# Eval("mobile") %></td>
                                                        <td><%# Eval("skill") %></td>
                                                        <td><%# Eval("dept") %></td>

                                                    </tr>

                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </table></div>
                                    </div>
                                </div>
                            </asp:Panel>
                        </div>
                    </div>
                </section>
                <!-- Main content -->
            </aside>
            <!-- All content section ends here-->
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
