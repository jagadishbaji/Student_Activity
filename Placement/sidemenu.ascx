<%@ Control Language="C#" AutoEventWireup="true" CodeFile="sidemenu.ascx.cs" Inherits="Placement_sidemenu" %>
<aside class="left-side sidebar-offcanvas">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="../img/avatar.png" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
                <p>Hello,<%= (Session["Placement"] as Placement_details).name%></p>

            </div>
        </div>
        <!-- search form -->
        
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
       <ul class="sidebar-menu">
            <li>
                <a href="dashboard.aspx">
                    <i class="fa fa-dashboard"></i><span>Dashboard</span>
                </a>
            </li>    
               <li class="treeview">
                <a href="#">
                    <i class="fa fa-plus"></i>
                    <span>Add</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  
                                 
                </ul>
            </li>          
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-gears"></i>
                    <span>My Settings</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="update-details.aspx"><i class="fa fa-angle-double-right"></i>Update Details</a></li>
                    <li><a href="change-password.aspx"><i class="fa fa-angle-double-right"></i>Change Password</a></li>                    
                </ul>
            </li>  
<li class="treeview">
                <a href="#">
                    <i class="fa fa-bar-chart-o"></i>
                    <span>View</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                      <li><a href="view-resummes.aspx"><i class="fa fa-angle-double-right"></i>Student Ressumes</a></li>
                    <li><a href="selected-students.aspx"><i class="fa fa-angle-double-right"></i>Selected-Students</a></li>
                 
               
                </ul>
            </li>   
          
          
          
        </ul>
           
      
    </section>
    <!-- /.sidebar -->
</aside>