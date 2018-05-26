<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add-attendance.aspx.cs" Inherits="Faculty_add_attendance" %>

<%@ Register Src="~/Faculty/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/Faculty/Side.ascx" TagPrefix="uc1" TagName="Side" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Student Activity</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />


    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />

    <link href="../css/admin-section.css" rel="stylesheet" type="text/css" />
    <link href="../css/custom.css" rel="stylesheet" type="text/css" />
    <link href="../js/plugins/croppic/css/croppic.css" rel="stylesheet" />
     <script src="../Admin/js/pikaday.js"></script>
    <script src="../Admin/js/pikaday.jquery.js"></script>
    <link href="../Admin/css/pikaday.css" rel="stylesheet" />
    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

    <link href="../js/jquery-ui.css" rel="stylesheet" />
    <script src="../js/jquery-ui-1.10.3.js"></script>
    <script src="../js/jquery-ui-1.10.3.min.js"></script>

</head>
<body class="skin-black">
    <form id="form1" runat="server">
        <uc1:head runat="server" ID="head" /> 
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <uc1:Side runat="server" ID="Side" />
            <aside class="right-side">
                <section class="content-header">
                    <h1>Add Attendance
                       
                        <small>Add Student Daily Attendance details.</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li class="active">Attendance</li>
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
                                        <label class=" control-label"><i class="fa fa-briefcase "></i>Department</label>


                                        <asp:DropDownList ID="dd_dept" runat="server" ForeColor="#0099FF" DataTextField="xxx" Height="24px" Width="222px">
                                            <asp:ListItem>Select Dept.</asp:ListItem>
                                            <asp:ListItem>CS</asp:ListItem>
                                            
                                        </asp:DropDownList>


                                    </div>
                                    <div class="form-group">
                                        <label class=" control-label"><i class="fa fa-briefcase "></i>Subject</label>


                                        <asp:DropDownList ID="dd_sub" runat="server" ForeColor="#0099FF" DataTextField="xxx" Height="24px" Width="222px">
                                            <asp:ListItem>Select Sub.</asp:ListItem>
                                            <asp:ListItem>Network Security</asp:ListItem>
                                            <asp:ListItem>Softawre Testing</asp:ListItem>
                                            <asp:ListItem>Mobile Computing</asp:ListItem>
                                           
                                        </asp:DropDownList>


                                    </div>
                                    <div class="form-group">
                                        <label class=" control-label"><i class="fa fa-briefcase "></i>Semester</label>


                                        <asp:DropDownList ID="dd_sem" runat="server" ForeColor="#0099FF" DataTextField="xxx" Height="24px" Width="222px">
                                            <asp:ListItem>Select Sem.</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                        </asp:DropDownList>


                                    </div>
                                    <div class="form-group">
                                        <asp:DropDownList ID="dd_period" runat="server" ForeColor="#0099FF" DataTextField="xxx" Height="24px" Width="222px">
                                            <asp:ListItem>Select Period</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                         
                                        </asp:DropDownList>

                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="msg" runat="server" fontsize="12"></asp:Label>
                                    </div>

                                </div>
                                <div class="box-footer clearfix">
                                    <asp:LinkButton ID="lnk_save" ValidationGroup="g1" class="pull-right btn btn-default" OnClick="lnk_save_Click" runat="server">Save <i class="fa fa-arrow-circle-right"></i></asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <asp:Panel ID="pnl_rpt" runat="server">
                            <div class="box box-info">
                                <div class="box-header">
                                    <h3 class="box-title">Take Attendance </h3>
                                </div>
                                <div class="box-body">
                                    <table class="table table-hover table-bordered">
                                        <thead>
                                            <tr>
                                                <td>Student Regnum.</td>
                                                <td>Name</td>

                                                <td>Present</td>

                                            </tr>
                                        </thead>
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("student_id") %></td>
                                                    <td><%# Eval("fullname") %></td>

                                                    <td>
                                                        <asp:CheckBox ID="chk_status" Checked="true" Text="Yes" runat="server" />
                                                        <asp:HiddenField ID="Hf_regnum" Value='<%# Eval("student_id") %>' runat="server" />
                                                </tr>


                                            </ItemTemplate>
                                        </asp:Repeater>




                                    </table>

                                </div>

                                <div class="box-footer clearfix">
                                    <asp:LinkButton ID="Submit" ValidationGroup="g1" class="pull-right btn btn-default" OnClick="lnk_submit_Click" runat="server">Submit <i class="fa fa-arrow-circle-right"></i></asp:LinkButton>
                                </div>
                            </div>

                        </asp:Panel>
                    </div>

                </section>

            </aside>


        </div>

        <!-- /#page-wrapper -->
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
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
        <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>

        <script type="text/javascript">
            $(function () {
                $('#datepick').datetimepicker({
                    format: 'DD-MM-YYYY',
                });
            });

        </script>
        <script type="text/javascript">
            var picker = new Pikaday(
             {
                 field: document.getElementById('txt_date'),
                 firstDay: 1,
                 minDate: new Date('1980-12-30'),
                 maxDate: new Date('1995-12-30'),
                 yearRange: [1950, 1995],
                 dateFormat: 'DD-MM-YYYY'
             });
        </script>
    </form>


</body>
</html>
