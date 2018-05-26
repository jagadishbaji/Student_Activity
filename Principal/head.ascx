<%@ Control Language="C#" AutoEventWireup="true" CodeFile="head.ascx.cs" Inherits="Admin_head" %>
 <link rel="stylesheet" href="../node_modules/font-awesome/css/font-awesome.min.css" />
  <link rel="stylesheet" href="../node_modules/perfect-scrollbar/dist/css/perfect-scrollbar.min.css" />
  <link rel="stylesheet" href="../node_modules/flag-icon-css/css/flag-icon.min.css" />
  <link rel="stylesheet" href="../css/style.css" />
  <link rel="shortcut icon" href="images/favicon.png" />


    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
   
<nav class="navbar navbar-default col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="bg-white text-center navbar-brand-wrapper">
        <h5 ><%= (Session["principal"] as Principal_details).name%> </h5>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center">
        <button class="navbar-toggler navbar-toggler d-none d-lg-block navbar-dark align-self-center mr-3" type="button" data-toggle="minimize">
          <span class="navbar-toggler-icon"></span>
        </button>
       
           <button class="navbar-toggler navbar-dark navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="navbar-toggler-icon"></span>
        </button>
        <ul class="navbar-nav ml-lg-auto d-flex align-items-center flex-row">
          <li class="nav-item">
                  </li>
          <li class="nav-item">
            <a class="nav-link" href="logout.aspx"><i  style="font-size:24px;color:red" class="fa fa-sign-out"></i></a>
          </li>
        </ul>
       
      </div>
    </nav>
