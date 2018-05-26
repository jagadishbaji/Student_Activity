<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view-attendance.aspx.cs" Inherits="student_view_attendance" %>

<%@ Register Src="~/student/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/student/Side.ascx" TagPrefix="uc1" TagName="Side" %>






<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                <br /><br /><br />
                <section class="content-header">
                    <h1>View Your Day-Wise Attandance 
                       
                        <small>Attendance details.</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li class="active">Attendance</li>
                    </ol>


                  <div class="col-lg-8">
                        <asp:Panel ID="pnl_rpt" runat="server">
                            <div class="box box-info">
                                <div class="box-header">
                                    <h3 class="box-title"> *Note 1 --> Present <br />0 --> Absent </h3>
                                   
                                </div>
                                <div class="box-body table-responsive">
                                    <asp:GridView ID="GridView1" runat="server" ItemStyle-HorizontalAlign="Right" BackColor="White" BorderColor="#999999" BorderStyle="Dashed" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="692px">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <EditRowStyle BackColor="#3399FF" ForeColor="#00FF99" />
                                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <RowStyle HorizontalAlign="center" BackColor="#EEEEEE" ForeColor="Black" />
                                        <SelectedRowStyle  BackColor="#008A8C"  Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#000065" />
                                    </asp:GridView>

                                    </div>



                                <div class="box-footer clearfix">
                                </div>
                            </div>

                        </asp:Panel>
       </div>
                </section>

    <d</aside>
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

        </script>
    </form>
   
</body>
</html>
