<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view-attendance.aspx.cs" Inherits="Faculty_view_attendance" %>

<%@ Register Src="~/Faculty/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/Faculty/Side.ascx" TagPrefix="uc1" TagName="Side" %>



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
                    <h1>DashBoard
                  
                    </h1>
                    <ol class="breadcrumb">
                    </ol>
                    <br />
                    <br />
                    <br />
                    <br />
                    <label>Select Semester : </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger">
                        <asp:ListItem>Select-Sem</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                    </asp:DropDownList><br />
                    <br />

                    <label>Enter Student ID: </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
                    <asp:Button ID="check" runat="server" Text="Submit" OnClick="check_Click" />
                    <br /><br /><br />

                    <div class="table-responsive">
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
