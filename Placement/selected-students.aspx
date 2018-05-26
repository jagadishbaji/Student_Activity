<%@ Page Language="C#" AutoEventWireup="true" CodeFile="selected-students.aspx.cs" Inherits="Placement_selected_students" %>

<%@ Register Src="~/Placement/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/Placement/Side.ascx" TagPrefix="uc1" TagName="Side" %>






<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
      <title>Student Activity</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>

    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />

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
                    <h1>Selected Students
                       
                        <small>Here is the list of selected students</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li class="active">Selected Students</li>
                    </ol>
                </section>

                  <!-- main -->
                <section class="content">

                    <div class="container">
                        <div class="col-lg-4">
                            
                        </div> <div class="clearfix"></div>
                        <div class="col-lg-11">
                            <asp:Panel ID="pnl_rpt" runat="server">
                                <div >
                                    <div >
                                        <h3 class="box-title">List of Students</h3>
                                    </div>
                                    <div >
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td>Name</td>
                                              
                                                <td>Email</td>
                                                
                                            </tr>

                                            <asp:Repeater ID="rpt_student" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%# Eval("Name") %></td>
                                                       
                                                        <td><%# Eval("email") %></td>
                                                        
                                                      
                                                    </tr>
                                               
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </table>
                                    </div>
                                </div>
                            </asp:Panel>
                        </div>
                    </div>
                </section>
    </aside>
    <!-- /#page-wrapper -->
</div><!-- /#wrapper -->

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

        </script>    </form>
</body>
</html>
