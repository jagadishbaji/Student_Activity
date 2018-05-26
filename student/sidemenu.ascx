<%@ Control Language="C#" AutoEventWireup="true" CodeFile="sidemenu.ascx.cs" Inherits="student_sidemenu" %>
<aside class="left-side sidebar-offcanvas">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
           
            <div class="pull-left info">
                <p>Hello,<%= (Session["student_details"] as student_details).name%></p>

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
                    <span>Applications</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                  <ul class="treeview-menu">
                         <li><a href="apply-placements.aspx"><i class="fa fa-angle-double-right"></i>Apply for Placement</a></li>
                    <li><a href="apply-sports.aspx"><i class="fa fa-angle-double-right"></i>Apply for Sports</a></li>  

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
                    <li><a href="view-timetable.aspx"><i class="fa fa-angle-double-right"></i>TimeTable</a></li>
                    <li><a href="view-faculty.aspx"><i class="fa fa-angle-double-right"></i>Faculties</li>
                  <li><a href="view-notice.aspx"><i class="fa fa-angle-double-right"></i>Notice-Board</a></li>
                      <li><a href="view-attendance.aspx"><i class="fa fa-angle-double-right"></i>Day-wise-Attendance</a></li>
                    <li><a href="view-images.aspx"><i class="fa fa-angle-double-right"></i>Images</a></li>
                 
                </ul>
            </li>   
          
             <li class="treeview">
                <a href="#">
                    <i class="fa fa-bar-chart-o"></i>
                    <span>View Marks</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="view-marks.aspx"><i class="fa fa-angle-double-right"></i>Sem 1</a></li>
                    <li><a href="view-marks-sem3.aspx"><i class="fa fa-angle-double-right"></i>Sem 3</li>
                  <li><a href="view-marks-sem5.aspx"><i class="fa fa-angle-double-right"></i>Sem 5</a></li>
                    
                </ul>
            </li>
          
        </ul>
           
       
    </section>
    <!-- /.sidebar -->
</aside>