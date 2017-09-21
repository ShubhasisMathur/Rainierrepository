<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>ATT Server Feeds</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <link href="./assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="./assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="./assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="./assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" />
        <link href="./assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="./assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="./assets/global/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
        <link href="./assets/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css" />
        <link href="./assets/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="./assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="./assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="./assets/layouts/layout3/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="./assets/layouts/layout3/css/themes/default.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="./assets/layouts/layout3/css/custom.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME LAYOUT STYLES -->
        <link rel="shortcut icon" href="favicon.ico" /> </head>
    <!-- END HEAD -->

    <body class="page-container-bg-solid page-boxed">
        <!-- BEGIN HEADER -->
        <div class="page-header">
            <!-- BEGIN HEADER TOP -->
            <div class="page-header-top">
                <div class="container">
                    <!-- BEGIN LOGO -->
                    <div class="page-logo">
                        <a href="index.html">
                            <img src="./assets/layouts/layout3/img/logo-default.png" alt="logo" class="logo-default">
                        </a>
                    </div>
                    <!-- END LOGO -->
                    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                    <a href="javascript:;" class="menu-toggler"></a>
                    <!-- END RESPONSIVE MENU TOGGLER -->
                    <!-- BEGIN TOP NAVIGATION MENU -->
                    <div class="top-menu">
                        <ul class="nav navbar-nav pull-right">             
                            
                            <!-- BEGIN USER LOGIN DROPDOWN -->
                            <li class="dropdown dropdown-user dropdown-dark">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                <span class="username username-hide-mobile">Welcome Pushkar !!!</span>
                                </a>
                                
                            </li>
                            <!-- END USER LOGIN DROPDOWN -->
                            
                        </ul>
                    </div>
                    <!-- END TOP NAVIGATION MENU -->
                </div>
            </div>
            <!-- END HEADER TOP -->
            <!-- BEGIN HEADER MENU -->
            <div class="page-header-menu">
                <div class="container">
                    
                    <!-- BEGIN MEGA MENU -->
                    <!-- DOC: Apply "hor-menu-light" class after the "hor-menu" class below to have a horizontal menu with white background -->
                    <!-- DOC: Remove data-hover="dropdown" and data-close-others="true" attributes below to disable the dropdown opening on mouse hover -->
                    <div class="hor-menu  ">
                        <ul class="nav navbar-nav">
                            <li class="menu-dropdown classic-menu-dropdown active">
                                <a href="javascript:;"> Dashboard
                                    <span class="arrow"></span>
                                </a> 
                            </li>
                            <li class="menu-dropdown mega-menu-dropdown  ">
                                <a href="javascript:;"> Release Info
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="menu-dropdown classic-menu-dropdown ">
                                <a href="javascript:;"> Misc Info
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="menu-dropdown mega-menu-dropdown  mega-menu-full">
                                <a href="javascript:;"> Contacts
                                    <span class="arrow"></span>
                                </a>
                            </li>
							</ul>
                                    
                    </div>
                    <!-- END MEGA MENU -->
                </div>
            </div>
            <!-- END HEADER MENU -->
        </div>
        <!-- END HEADER -->
        <!-- BEGIN CONTAINER -->
        <div class="page-container">
            <!-- BEGIN CONTENT -->
            <div class="page-content-wrapper">
                <!-- BEGIN CONTENT BODY -->
                <!-- BEGIN PAGE HEAD-->
                <div class="page-head">
                    <div class="container">
                        <!-- BEGIN PAGE TITLE -->
                        <div class="page-title">
                            <h1>Server Information</h1>
                        </div>
                        <!-- END PAGE TITLE -->
                        <!-- BEGIN PAGE TOOLBAR -->
                        <div class="page-toolbar">
                          
                        </div>
                        <!-- END PAGE TOOLBAR -->
                    </div>
                </div>
                <!-- END PAGE HEAD-->
                <!-- BEGIN PAGE CONTENT BODY -->
                <div class="page-content">
                    <div class="container">
				<!-- BEGIN PAGE CONTENT INNER -->
                        <div class="page-content-inner">
                            <div class="row">
                                <div class="col-md-12">
                                    
                                    <!-- BEGIN PROFILE CONTENT -->
                                    <div class="profile-content">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <!-- BEGIN PORTLET -->
                                                <div class="portlet light ">
                                                    <div class="portlet-title">
                                                        <div class="caption caption-md">
                                                            <i class="icon-bar-chart theme-font hide"></i>
                                                            <span class="caption-subject font-blue-madison bold uppercase">Instance Details</span>
                                                            </div></div>
                                                    <div class="portlet-body">
                                                        <div class="row number-stats margin-bottom-30">
                                                            <div class="col-md-6 col-sm-6 col-xs-6">
                                                                <div class="stat-left">
                                                                    <div class="stat-chart">
                                                                        <!-- do not line break "sparkline_bar" div. sparkline chart has an issue when the container div has line break -->
                                                                         <div></div>
                                                                    </div>
                                                                    <div class="stat-number">
                                                                        <div class="title"> Memory Author </div>
                                                                        <div class="number"> 25% </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-sm-6 col-xs-6">
                                                                <!--<div class="stat-right">
                                                                    <div class="stat-chart">
                                                                         do not line break "sparkline_bar" div. sparkline chart has an issue when the container div has line break 
                                                                        <div id="sparkline_bar2"></div>
                                                                    </div>-->
																	
																	<div class="stat-right">
                                                                    <div class="stat-chart">
                                                                        
                                                                    </div>
																	
                                                                    <div class="stat-number">
                                                                        <div class="title"> Memory Main</div>
                                                                        <div class="number"> 60% </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="table-scrollable table-scrollable-borderless">
                                                            <table class="table table-hover table-light">
                                                                <thead>
                                                                    <tr class="uppercase">
                                                                        <th> EAR </th>
                                                                        <th> Status </th>
                                                                    </tr>
                                                                </thead>
                                                                <tr>
                                                                    <td>
                                                                    online-main1 App | online	
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Active</span>
                                                                    </td>
                                                                </tr>
																
																<tr>
                                                                    <td>
                                                                    online-main1 App | sales-frontend	
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Active</span>
                                                                    </td>
                                                                </tr>
																
																<tr>
                                                                    <td>
                                                                    online-sjob App | online	
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Active</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    sales-auth App | aem561_base		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Active</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    sales-fulfill App | sales-atgservice		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Active</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    sales-main1 App | sales-atgservice		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Active</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    sales-main1 App | sales-frontend		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">In-Active</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    sales-sjob App | sales-atgservice		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Active</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    shop-auth App | shop		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Active</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    shop-fulfill App | shop		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Active</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                   shop-main1 App | shop		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Active</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
  																		shop-sjob App | shop			
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Active</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- END PORTLET -->
                                            </div>
                                            <div class="col-md-6">
                                                <!-- BEGIN PORTLET -->
                                                <div class="portlet light ">
                                                    <div class="portlet-title tabbable-line">
                                                        <div class="caption caption-md">
                                                            <i class="icon-globe theme-font hide"></i>
                                                            <span class="caption-subject font-blue-madison bold uppercase">Server Summary</span>
                                                        </div>
                                                        
                                                    </div>
                                                    <div class="portlet-body">
                                                        <table class="table table-hover table-light">
                                                                <thead>
																<tr class="uppercase">
                                                                        <th colspan=2> 
																		
																		<div class="btn-group btn-group-devided" data-toggle="buttons">
																		<label class="btn btn-transparent red btn-outline btn-circle btn-sm active">
																		<input type="radio" name="options" class="toggle" id="option1">Configuration</label>
																		</div>

																		<div class="btn-group btn-group-devided" data-toggle="buttons">
																		<label class="btn btn-transparent blue btn-outline btn-circle btn-sm active">
																		<input type="radio" name="options" class="toggle" id="option1">Dyn-Admin</label>
																		</div>
																		
																		<div class="btn-group btn-group-devided" data-toggle="buttons">
																		<label class="btn btn-transparent yellow btn-outline btn-circle btn-sm active">
																		<input type="radio" name="options" class="toggle" id="option1">Database</label>
																		</div>
																		
																		<div class="btn-group btn-group-devided" data-toggle="buttons">
																		<label class="btn btn-transparent green btn-outline btn-circle btn-sm active">
																		<input type="radio" name="options" class="toggle" id="option1">Error</label>
																		</div>
																		</th>
                                                                        
                                                                    </tr>
                                                                    <tr class="uppercase">
                                                                        <th> Instance </th>
                                                                        <th> Status </th>
                                                                    </tr>
                                                                </thead>
                                                                <tr>
                                                                    <td>
                                                                    Server Name
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">ecomtest01</span>
                                                                    </td>
                                                                </tr>
																<tr>
                                                                    <td>
                                                                    Disk Main
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">65%</span>
                                                                    </td>
                                                                </tr>
																<tr>
                                                                    <td>
                                                                    Disk Author
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">54%</span>
                                                                    </td>
                                                                </tr>
																
																<tr>
                                                                    <td>
                                                                    Memory Main
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">97%</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    Memory Author
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">98%</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    CPU Main
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">98%</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    CPU Author
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">98%</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    Load Main
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">98%</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    Load Author
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">98%</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    URL Shop
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">OK</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                    Memory Author
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">OK</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                    
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                    
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                    
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"></span>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                    </div>
                                                </div>
                                                <!-- END PORTLET -->
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <!-- BEGIN PORTLET -->
                                                <div class="portlet light ">
                                                    <div class="portlet-title">
                                                        <div class="caption caption-md">
                                                            <i class="icon-bar-chart theme-font hide"></i>
                                                            <span class="caption-subject font-blue-madison bold uppercase">DYN-ADMIN
                                                            
                                                        </div>
                                                       
                                                    </div>
                                                    <div class="portlet-body">
                                                        <table class="table table-hover table-light">
                                                                <thead>
                                                                    <tr class="uppercase">
                                                                        <th> Instance </th>
                                                                        <th> Status </th>
                                                                    </tr>
                                                                </thead>
                                                               
																  <tr>
                                                                    <td>
                                                                    Server Name
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">ecomtest01</span>
                                                                    </td>
                                                                </tr>
																<tr>
                                                                    <td>
                                                                    Disk Space
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">65%</span>
                                                                    </td>
                                                                </tr>
																
																<tr>
                                                                    <td>
                                                                    Shop Main 3
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Running</span>
                                                                    </td>
                                                                </tr>
																
																<tr>
                                                                    <td>
                                                                    Shop Main 3
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Running</span>
                                                                    </td>
                                                                </tr>
																
																<tr>
                                                                    <td>
                                                                    Shop Main 3
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Running</span>
                                                                    </td>
                                                                </tr>
                                                                
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- END PORTLET -->
                                            
                                            
											<div class="col-md-6">
                                                <!-- BEGIN PORTLET -->
                                                <div class="portlet light">
                                                    <div class="portlet-title">
                                                        <div class="caption caption-md">
                                                            <i class="icon-bar-chart theme-font hide"></i>
                                                            <span class="caption-subject font-blue-madison bold uppercase">CURL Properties</span>
                                                            
                                                        </div>
                                                        
                                                    </div>
                                                    <div class="portlet-body">
                                                        <table class="table table-hover table-light">
                                                                <thead>
                                                                    <tr class="uppercase">
                                                                        <th> Instance </th>
                                                                        <th> Status </th>
																		<th> Action </th>
                                                                    </tr>
                                                                </thead>
                                                                <tr>
                                                                    <td>
                                                                    Disk Space
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">65%</span>
                                                                    </td>
																	
																	<td>
                                                                         <div class="btn-group btn-group-devided" data-toggle="buttons">
																		<label class="btn btn-transparent red btn-outline btn-circle btn-sm active">
																		<input type="radio" name="options" class="toggle" id="option1">Edit</label>
																		</div>
																	</td>
                                                                </tr>
																
																<tr>
                                                                    <td>
                                                                    Shop Main 2
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Running</span>
                                                                    </td>
																	
																	<td>
                                                                         <div class="btn-group btn-group-devided" data-toggle="buttons">
																		<label class="btn btn-transparent red btn-outline btn-circle btn-sm active">
																		<input type="radio" name="options" class="toggle" id="option1">Edit</label>
																		</div>
																	</td>
																	
                                                                </tr>
																
																<tr>
                                                                    <td>
                                                                    Shop Main 3
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Running</span>
                                                                    </td>
																	
																	<td>
                                                                         <div class="btn-group btn-group-devided" data-toggle="buttons">
																		<label class="btn btn-transparent red btn-outline btn-circle btn-sm active">
																		<input type="radio" name="options" class="toggle" id="option1">Edit</label>
																		</div>
																	</td>
                                                                </tr>
																<tr>
                                                                    <td>
                                                                    Shop Main 3
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font">Running</span>
                                                                    </td>
																	
																	<td>
                                                                         <div class="btn-group btn-group-devided" data-toggle="buttons">
																		<label class="btn btn-transparent red btn-outline btn-circle btn-sm active">
																		<input type="radio" name="options" class="toggle" id="option1">Edit</label>
																		</div>
																	</td>
                                                                </tr>
                                                                
                                                            </table>
                                                        
                                                    </div>
                                                </div>
                                                <!-- END PORTLET -->
                                            </div>
                                        </div></div></div>
                                    </div>
                                    <!-- END PROFILE CONTENT -->
                                </div>
                            </div>
                        </div>
                        <!-- END PAGE CONTENT INNER -->	
                <!-- END CONTENT BODY -->
            </div>
            <!-- END CONTENT -->
            
        </div>
        <!-- END CONTAINER -->
        <!-- BEGIN FOOTER -->
        <!-- BEGIN INNER FOOTER -->
        <div class="page-footer">
            <div class="container"> 2016 &copy; AT&T EM Team
            </div>
        </div>
        <div class="scroll-to-top">
            <i class="icon-arrow-up"></i>
        </div>
        <!-- END INNER FOOTER -->
        <!-- END FOOTER -->
        <!--[if lt IE 9]>
<script src="./assets/global/plugins/respond.min.js"></script>
<script src="./assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        <script src="./assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="./assets/global/plugins/moment.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/morris/morris.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/morris/raphael-min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/counterup/jquery.waypoints.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/counterup/jquery.counterup.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
        <script src="./assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="./assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="./assets/pages/scripts/dashboard.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="./assets/layouts/layout3/scripts/layout.min.js" type="text/javascript"></script>
        <script src="./assets/layouts/layout3/scripts/demo.min.js" type="text/javascript"></script>
        <script src="./assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
    </body>

</html>