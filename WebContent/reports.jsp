<%@page import="java.util.HashMap"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*,com.server.log.ServerLog,java.util.*,java.io.File;"%>
<html lang="en">
<head>

<meta charset="utf-8" />
<title>ATT Server Feeds</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"	rel="stylesheet" type="text/css" />
<link	href="./assets/global/plugins/font-awesome/css/font-awesome.min.css"	rel="stylesheet" type="text/css" />
<link	href="./assets/global/plugins/simple-line-icons/simple-line-icons.min.css"	rel="stylesheet" type="text/css" />
<link href="./assets/global/plugins/bootstrap/css/bootstrap.min.css"	rel="stylesheet" type="text/css" />
<link href="./assets/global/plugins/uniform/css/uniform.default.css"	rel="stylesheet" type="text/css" />
<link	href="./assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<link	href="./assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css"	rel="stylesheet" type="text/css" />
<link href="./assets/global/plugins/morris/morris.css" rel="stylesheet"	type="text/css" />
<link href="./assets/global/plugins/fullcalendar/fullcalendar.min.css"	rel="stylesheet" type="text/css" />
<link href="./assets/global/plugins/jqvmap/jqvmap/jqvmap.css"	rel="stylesheet" type="text/css" />
<link href="../assets/global/plugins/select2/css/select2.min.css"	rel="stylesheet" type="text/css" />
<link	href="../assets/global/plugins/select2/css/select2-bootstrap.min.css"	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link href="./assets/global/css/components.min.css" rel="stylesheet"	id="style_components" type="text/css" />
<link href="./assets/global/css/plugins.min.css" rel="stylesheet"	type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN THEME LAYOUT STYLES -->
<link href="./assets/layouts/layout3/css/layout.min.css"	rel="stylesheet" type="text/css" />
<link href="./assets/layouts/layout3/css/themes/default.min.css"	rel="stylesheet" type="text/css" id="style_color" />
<link href="./assets/layouts/layout3/css/custom.min.css"	rel="stylesheet" type="text/css" />
<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="favicon.ico" />


<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
     
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['UPTIME',     11],
          ['DOWNTIME',   2],
          
        ]);

        var options = {
          title: 'SERVER ANALYSIS',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    
    
    
     
      google.charts.setOnLoadCallback(drawChart1);
      function drawChart1() {
        var data = google.visualization.arrayToDataTable([
          ['UPTIME', 'DOWNTIME', { role: 'style' }],
          ['SCHEDULED', 13,'color:#703593'], 
          ['UNSCHEDULED', 12,'color: #e5e4e2']
          
        ]);

        var barchart_options = {title:'DOWN TIME ANALYSIS',
                width:540,
                height:350,
                legend: 'none'};
 var barchart = new google.visualization.BarChart(document.getElementById('piechart'));
 barchart.draw(data, barchart_options);
      }
    </script>
    
</head>
<!-- END HEAD -->

<body class="page-container-bg-solid page-boxed">
	

	<!-- BEGIN HEADER -->
	<div class="page-header">
		<!-- BEGIN HEADER TOP -->
		<div class="page-header-top">
			<div class="container">
				<!-- BEGIN LOGO -->
				<div class="page-logo">
					<a href="index.html"> <img
						src="./assets/layouts/layout3/img/logo-default.png" alt="logo"
						class="logo-default">
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
						<li class="dropdown dropdown-user dropdown-dark"><img
							src="./assets/layouts/layout3/img/Rainier.png" /> <img
							src="./assets/layouts/layout3/img/att.png" height="55px"
							width="75px" /></li>
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
						<li class="menu-dropdown classic-menu-dropdown "><a
							href="main.jsp"> Dashboard <span class="arrow"></span>
						</a></li>
						<li class="menu-dropdown mega-menu-dropdown  "><a
							href="wiki-sales.jsp"> EM Wiki <span class="arrow"></span>
						</a></li>
						<li class="menu-dropdown mega-menu-dropdown active"><a
							href="reports.jsp"> Reports <span class="arrow"></span>
						</a></li>
						<!-- <li class="menu-dropdown mega-menu-dropdown  mega-menu-full">
							<a href="javascript:;"> Contacts <span class="arrow"></span>
						</a>
						</li> -->
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
						<h1>Reports (Work In Progress)</h1>
					</div>
					
					
					
					<!-- END PAGE TITLE -->
					<!-- BEGIN PAGE TOOLBAR -->
					<div class="page-toolbar"></div>
					<!-- END PAGE TOOLBAR -->
				</div>
			</div>
			<!-- END PAGE HEAD-->
			<!-- BEGIN PAGE CONTENT BODY -->
			<div class="page-content">
				<div class="container">
				
				<ul class="page-breadcrumb breadcrumb">
                            <li>
                                
                             </li>
                    </ul>
					<!-- BEGIN PAGE CONTENT INNER -->
					<div class="page-content-inner">
						<div class="row">
							<div class="col-md-12">

								<div class="portlet light">
									<div class="portlet-title">




 								<div class="portlet box blue">
                                        <div class="portlet-title">
                                            <div class="caption">
                                                <i></i>WEBLOGIC ANALYSIS </div>
                                            
                                        </div>
                                        
                                        <div class="portlet-body">
                                            <div class="table-responsive">
										<table class="table table-condensed table-hover">
											<tr>
												<td>
													<div class="caption" id="error-log">
													
													<table>
														<tr >
															<td>
																Server
																
															</td>
															<td>
																
																	<select class="bs-select form-control">
																		<option>ALL</option>
																		<option>ecombuild01.bodc.att.com</option>
																		<option>ecombuild02.bodc.att.com</option>
																		<option>ecombuild03.bodc.att.com</option>
																		
																	</select>
																
															</td>
															
															
															<td>
																Instance
																
															</td>
															<td>
																
																	<select class="bs-select form-control">
																		<option>ALL</option>
																		<option>shop-main1_App_shop</option>
																		<option>shop-fulfill_App_shop</option>
																		<option>sales-main1_App_sales-atgservice</option>
																		
																	</select>
																
															</td>
															
																													
															<td>
																Duration
																
															</td>
															<td>
																
																	<select class="bs-select form-control">
																		<option>Last 7 Days</option>
																		<option>Last 15 Days</option>
																		<option>Custom</option>
																	</select>
																
															</td>
															
															<td><button type="button" class="btn btn-success">View Report</button></td>
															<td><button type="button" class="btn default">Export PDF</button></td>
														</tr>
														<tr>
															<td></td>
														</tr>
														
													</table>
													</div>
												
													
												</td>
											</tr>
											
											
											<tr>
											<td>
											<table>
											<tr><td>
										    <div id="piechart_3d" style="width: 540px; height: 350px;">
										    </div>
										    </td>
										    <td>
  											<div id="piechart" style="width: 540px; height: 350px;"></div>
											
											</td>
											</tr>
											</table>
											</td>
											</tr>
									
										</table>
</div></div></div>
									</div>
								</div>
							</div>
						</div>
					</div>


					<!-- END PROFILE CONTENT -->
				</div>
			</div>
		</div>


		<!-- END PAGE CONTENT INNER -->
		<!-- END CONTENT BODY -->

		<!-- END CONTENT -->
	</div>

	<!-- END CONTAINER -->

	<!-- BEGIN FOOTER -->
	<!-- BEGIN INNER FOOTER -->
	<div class="page-footer">
		<div class="container">2016 &copy; ATT EM Team</div>
	</div>

	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
	
	<!-- END PAGE LEVEL SCRIPTS -->
	<!-- BEGIN THEME LAYOUT SCRIPTS -->
	<script src="./assets/layouts/layout3/scripts/layout.min.js"		type="text/javascript"></script>
	<script src="./assets/layouts/layout3/scripts/demo.min.js"		type="text/javascript"></script>
	
	<!-- END THEME LAYOUT SCRIPTS -->
</body>

</html>