<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="Admin_dashboard" %>


<%@ Register Src="~/admin/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/admin/sidemenu.ascx" TagPrefix="uc1" TagName="sidemenu" %>
<%@ Register Src="~/Admin/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/Admin/Side.ascx" TagPrefix="uc1" TagName="Side" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8"/>
        <title>Student Activity</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'/>
        
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        
        <link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />
        
        <link href="../css/admin-section.css" rel="stylesheet" type="text/css" />
        <link href="../css/custom.css" rel="stylesheet" type="text/css" />
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
   <link rel="icon" href="favicon.ico" type="image/x-icon"  />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="../plugins/bootstrap/css/bootstrap.css" rel="stylesheet"/>

    <!-- Waves Effect Css -->
    <link href="../plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="../plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Morris Chart Css-->
    <link href="../plugins/morrisjs/morris.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="../css/style.css" type="text/css" rel="stylesheet"/>


    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="../css/themes/all-themes.css" rel="stylesheet" />
</head>
<body class="skin-black">
    <form id="form1" runat="server">
        <uc1:head runat="server" ID="head" />
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <uc1:Side runat="server" ID="Side" />
            <!-- This is the place to put all your content -->
            <aside class="right-side">
                <!-- Heading section of page -->
                 <!-- partial -->
        <div class="content">
          <h3 style="color:black;" >Dashboard</h3>
          
          </div>

                <!-- Main content -->
                <section class="content">

                    
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
