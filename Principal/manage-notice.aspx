<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage-notice.aspx.cs" Inherits="Principal_add_notice" %>

<%@ Register Src="~/Principal/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/Principal/Side.ascx" TagPrefix="uc1" TagName="Side" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Activity</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />

   <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />
       <script src="../Admin/js/pikaday.js"></script>
    <script src="../Admin/js/pikaday.jquery.js"></script>
    <link href="../Admin/css/pikaday.css" rel="stylesheet" />
    <link href="../css/admin-section.css" rel="stylesheet" type="text/css" />
    <link href="../css/custom.css" rel="stylesheet" type="text/css" />
    <link href="../js/plugins/croppic/css/croppic.css" rel="stylesheet" />
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
            <!-- This is the place to put all your content -->
            <aside class="right-side">
                <!-- Heading section of page -->
                <section class="content-header">
                    <h1>Add New Notice
                       
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="dashboard.aspx"><i class="fa fa-dashboard"></i>Home</a></li>
                        <li class="active">Add Notice</li>
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
                                    
                                        <i class="fa fa-gear"></i>
                                        <label>Subject</label>
                                        <asp:TextBox ID="txt_sub" CssClass="form-control" placeholder="Enter Subject Of Notice" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Subject Of Notice" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_sub"></asp:RequiredFieldValidator>

                                   
                                        <i class="fa fa-user"></i>
                                        <label>Description</label>
                                        <asp:TextBox ID="txt_dcr" CssClass="form-control" placeholder="Description" TextMode="MultiLine" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Provide Some Discription" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_dcr"></asp:RequiredFieldValidator>

                                    
                                        <label>Date</label>
                                        <div class='input-group date' id='datepick'>
                                            <asp:TextBox ID="txt_date" placeholder=" Date" runat="server"></asp:TextBox><span class="input-group-addon ">
                                                <span class="fa fa-calendar"></span>
                                            </span>
                                        </div>
                                    



                                    
                                        <asp:Label ID="msg" runat="server" fontsize="12"></asp:Label>
                                  

                                </div>
                                <div class="box-footer clearfix">
                                    <asp:LinkButton ID="lnk_save" ValidationGroup="g1" class="pull-right btn btn-default" OnClick="lnk_save_Click" runat="server">Save <i class="fa fa-arrow-circle-right"></i></asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
                     <div class="clearfix"></div>
                        <div class="col-lg-11">
                            <asp:Panel ID="pnl_rpt" runat="server">
                                <div >
                                    <div >
                                        <h3 ">Notice List</h3>
                                    </div>
                                    <div>
                                             <div class="table-responsive">
                                        <table class="table table-hover table-bordered">
                                            <thead>
                                                <tr>
                                                    <td>Notice-ID</td>
                                                    <td>Subject</td>
                                                    <td>Description</td>
                                                    <td>Notice Date</td>
                                                    <td>Delete</td>
                                                </tr>
                                            </thead>
                                            <asp:Repeater ID="Repeater1" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                         <td><%# Eval("notice_id") %></td>
                                                        <td><%# Eval("subject") %></td>
                                                        <td><%# Eval("descr") %></td>
                                                        <td><%# Eval("noticedate") %></td>
                                                      
                                                        <td>
                                                            <asp:LinkButton ID="lnk_delete" ToolTip="Delete" CommandArgument='<%# Eval("notice_id") %>' OnClick="lnk_delete_Click" runat="server"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </table></div>
                                    </div>
                                </div>
                            </asp:Panel>
                        </div>


                  
            </section></aside></div>


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
             var picker = new Pikaday(
              {
                  field: document.getElementById('txt_date'),
                  firstDay: 1,
                  minDate: new Date('2019-12-30'),
                  maxDate: new Date(2016 - 12 - 30),
                  yearRange: [2016, 2019],
                  dateFormat: 'DD-MM-YYYY'
              });
        </script>
    </form>
</body>
</html>
