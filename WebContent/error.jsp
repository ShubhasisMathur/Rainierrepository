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
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"	rel="stylesheet" type="text/css" />
<link	href="./assets/global/plugins/font-awesome/css/font-awesome.min.css"	rel="stylesheet" type="text/css" />
<link	href="./assets/global/plugins/simple-line-icons/simple-line-icons.min.css"	rel="stylesheet" type="text/css" />
<link href="./assets/global/plugins/bootstrap/css/bootstrap.min.css"	rel="stylesheet" type="text/css" />
<link href="./assets/global/plugins/uniform/css/uniform.default.css"	rel="stylesheet" type="text/css" />
<link	href="./assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"	rel="stylesheet" type="text/css" />
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
</head>
<!-- END HEAD -->

<body class="page-container-bg-solid page-boxed">
	<%!String tsthostname = null;
	String tsthostnameAuth = null;%>

	<%
		tsthostname = (String) request.getParameter("tsthostname");
		tsthostnameAuth = tsthostname.substring(0, 10);
		System.out.println("tst hostname Auth " + tsthostnameAuth);

		System.out.println("In Jsp page ==> tsthostname :: " + tsthostname);
	%>
	<script>
		function getLog(tst) {
			document.getElementById("error-log").innerHTML = '';
			var selectedLine = document.getElementById("instancelist").value;
			if (selectedLine != '') {

				var lineNo = document.getElementById("lineNo").value;
				
				var xhttp = new XMLHttpRequest();
				
				/* var oldFrame= document.getElementById("logFrame"); */
            	
	        	 /* var iframe = document.createElement('iframe');
	        	 iframe.frameBorder=1;
	        	 iframe.width="1150px";
	        	 iframe.height="650px";
	        	 iframe.id="logFrame";
	        	 
	        	// iframe.setAttribute("src", url);
	        	 if(oldFrame==null)
	        		 {
	        		 document.getElementById("result").appendChild(iframe);
	        		 }else{
	        	 	document.getElementById("result").replaceChild(iframe,oldFrame);//iframe;
	        		 } */
				
				xhttp.onreadystatechange = function() {
					if (xhttp.readyState == 4 && xhttp.status == 200) {
						
						
						
						/* document.getElementById("error-log").innerHTML = xhttp.responseText; */
						//document.getElementById("error-log").innerHTML = xhttp.responseText;
						/*  if(oldFrame==null)
							{ */
							 $('#error-log').empty();
					/* 	$(
						'<iframe id="logFrame"  height=550px width=1100px ></iframe>')
						.appendTo('#error-log').contents().find('body').html(
								xhttp.responseText); */
								document.getElementById("error-log").innerHTML = xhttp.responseText;
						/* 	}else
								{
								logFrame.replaceWith("	$('<iframe id='logFrame'  height=550px width=850px ></iframe>').appendTo('#error-log').contents().find('body').html("+
										xhttp.responseText+")");
										
								} */
					}
				};
				xhttp.open("GET", "LogPage.jsp?logpath=" + selectedLine
						+ "&tsthostname=" + tst + "&lineNo=" + lineNo, true);
				xhttp.send();
			}
		}

		function getAuthLog(tst) {
			document.getElementById("error-log").innerHTML = '';
			var selectedAuthLine = document.getElementById("authInstanceList").value;
			if (selectedAuthLine != '') {
				var oldFrame= document.getElementById("logFrame");
				
				var lineNo = document.getElementById("lineNo").value;
				var xhttp = new XMLHttpRequest();
				xhttp.onreadystatechange = function() {
					if (xhttp.readyState == 4 && xhttp.status == 200) {
						//document.getElementById("error-log").innerHTML = xhttp.responseText;
						
						 $('#error-log').empty();
						 document.getElementById("error-log").innerHTML = xhttp.responseText;
						/* $(
						'<iframe id="logFrame"  height=550px width=1100px ></iframe>')
						.appendTo('#error-log').contents().find('body').html(
								xhttp.responseText); */
						
						/*  if(oldFrame==null)
							{
						$(
						'<iframe id="logFrame"  height=550px width=850px ></iframe>')
						.appendTo('#error-log').contents().find('body').html(
								xhttp.responseText);
							}else
								{
								logFrame.replaceWith("	$('<iframe id='logFrame'  height=550px width=850px ></iframe>').appendTo('#error-log').contents().find('body').html("+
										xhttp.responseText+")");
										
								} */
					}
				};
				xhttp.open("GET", "LogPage.jsp?logpath=" + selectedAuthLine
						+ "&tsthostname=" + tst + "&lineNo=" + lineNo, true);
				xhttp.send();
			}
		}
	</script>
	<script type="text/javascript">
		function toggleBotton(butt, sel1, sel2) {
			var el1 = document.getElementById(sel1);
			var el2 = document.getElementById(sel2);
			if (butt == 'ecomTestMain') {
				document.getElementById(sel1).style.visibility = '';
				if (el2.style.visibility == '')
					el2.style.visibility = 'hidden';
			}
			else {

				if (butt == 'ecomTestAuthor') {
					document.getElementById(sel2).style.visibility = '';
					if (el1.style.visibility == '')
						el1.style.visibility = 'hidden';
				}

			}

		}
	</script>

	<!-- BEGIN HEADER -->
	<div class="page-header">
		<!-- BEGIN HEADER TOP -->
		<div class="page-header-top">
			<div class="container">
				<!-- BEGIN LOGO -->
				<div class="page-logo">
					<a href="index.html"> <img
						src="./assets/layouts/layout3/img/logo-default.png" alt="logo" class="logo-default">
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
						<li class="menu-dropdown classic-menu-dropdown active"><a
							href="main.jsp"> Dashboard <span class="arrow"></span>
						</a></li>
						<li class="menu-dropdown mega-menu-dropdown  "><a
							href="wiki-sales.jsp"> EM Wiki <span class="arrow"></span>
						</a></li>
						<li class="menu-dropdown classic-menu-dropdown "><a
							href="reports.jsp">Reports  <span class="arrow"></span>
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
						<h1>Logs</h1>
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
                                Server: <%=tsthostname%>
                             </li>
                    </ul>
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

												<div class="portlet-body">


													<table>
														<tr>
															<td>
																<!-- onclick="getMainServer()" onclick="getAuthServer()" style="visibility:hidden -->
																<button type="button" name="ecomTestMain"
																	class="btn btn-circle red btn-sm"
																	onclick="toggleBotton('ecomTestMain','instancelist','authInstanceList')">Ecom
																	Test Publish</button>
															</td>
															<td>
																<div class="button-selcet">
																	<select class="bs-select form-control"
																		id="instancelist" style="visibility: hidden"
																		onchange="getLog('<%=tsthostname%>')">
																		<option></option>
																		<%!String tstname = null;
																			String tsthost = null;%>
																		<%
																			String defaultText = "Please select a Log ";

																			String tsthostname1 = (String) request.getParameter("tsthostname");

																			for (int i = 1; i <= 36; i++) {
																				String flag = null;
																				if (i < 10) {
																					flag = "0" + i;
																				} else
																					flag = "" + i;
																				if (tsthostname.equalsIgnoreCase("ecomtest" + flag
																						+ ".bodc.att.com")) {
																					tsthost = "ecomtest" + flag;
																					if (i < 10) {
																						tstname = "tst0" + i;
																					} else
																						tstname = "tst" + i;

																				}
																			}
																		%>
																		<option value="<%=tstname%>-shop-main1">shop-main1/logs/console.log</option>
																		<option value="<%=tstname%>-shop-fulfill">shop-fulfill/logs/console.log</option>
																		<option value="<%=tstname%>-shop-sjob">shop-sjob/logs/console.log</option>
																		<option value="<%=tstname%>-sales-main1">sales-main1/logs/console.log</option>
																		<option value="<%=tstname%>-sales-sjob">sales-sjob/logs/console.log</option>
																		<option value="<%=tstname%>-sales-fulfill">sales-fulfill/logs/console.log</option>
																		<option value="<%=tstname%>-admin">admin/logs/console.log</option>
																		<option value="<%=tstname%>-online-sjob">online-sjob/logs/console.log</option>
																	</select>
																</div>
															</td>
														</tr>

														<tr>
															<td><div class="button-selcet">
																	<button type="button" name="ecomTestAuthor"
																		class="btn btn-circle green btn-sm"
																		onclick="toggleBotton('ecomTestAuthor','instancelist','authInstanceList')">Ecom
																		Test Author</button>

																</div></td>
															<td><select class="bs-select form-control"
																id="authInstanceList" style="visibility: hidden"
																onchange="getAuthLog('<%=tsthostnameAuth%>-author')">
																	<option></option>

																	<%
																		String defaultText1 = "Please select a Auth Serv Log ";

																		String tsthostnam2 = (String) request.getParameter("tsthostname");
																		String tstname2 = null;

																		for (int i = 1; i <= 36; i++) {
																			String flag = null;
																			if (i < 10) {
																				flag = "0" + i;
																			} else
																				flag = "" + i;
																			if (tsthostname.equalsIgnoreCase("ecomtest" + flag
																					+ ".bodc.att.com")) {
																				if (i < 10) {
																					tstname2 = "tst0" + i;
																				} else
																					tstname2 = "tst" + i;

																			}
																		}
																	%>
																	<option value="<%=tstname2%>-shop-auth">shop-auth/logs/console.log</option>
																	<option value="<%=tstname2%>-sales-auth">sales-auth/logs/console.log</option>
																	<option value="<%=tstname2%>-stand-auth">stand-auth/logs/console.log</option>
															</select></td>
														</tr>
														<tr>
															<td></td>
														</tr>
														<tr>
															<td>No. of Lines (Tail) :</td>
															<td><input id="lineNo" value="100" type=text
																size="5"></td>
														</tr>
													</table>
												</div>

												<!-- 	<button type="button" class="" onclick="getMainServer()"
													>View Logs</button>
											 -->
												<!--     <label class="control-label col-md-3">Default</label> -->



												<%-- <select class="bs-select form-control" id=instancelist array="MainInstances">
											
													<%-- <option>Mustard</option>
													

													<%
														String defaultText = "Please select a Log ";
													%>
													
													 <option value="none"><%=defaultText%></option> 
													
													
													
													<%
													/* System.out.println("dsad");
													
													ArrayList list=(ArrayList)request.getAttribute("MainInstances");
													
													for (int i = 0; i < list.size(); i++) {
													 String logfilename = (String)list.get(i); */
													
													 
													 
														/* while (iterator.hasNext()) {
															Map.Entry mapEntry = (Map.Entry) i.next();
															// getKey Method of HashMap access a key of map
															String keyValue = (String) mapEntry.getKey();
															//getValue method returns corresponding key's value
															String value = (String) mapEntry.getValue(); */
													%> --%>

												<%-- <option	value="/sites/servers/'<%=logfilename%>'"><%=logfilename%></option> --%>

												<%-- <%
														}
													%> --%>

												<!-- </select> -->


											</div>
											<!-- END PORTLET -->
										</div>

										<div class="col-md-6">

											<!-- BEGIN PORTLET -->
											<div class="portlet light ">

												<div class="portlet-body">
													<table class="table table-hover table-light">
														<thead>
															<tr class="uppercase">
																<th colspan=2>
																	<!-- <a href="dyn-admin.jsp"> --> 
																	<a href="dyn-admin.jsp?tsthostname=<%=tsthostname%>">
																		<button type="button" class="btn green btn-sm">Dyn Admin</button>
																</a> 
																<!-- <a href="#">
																		<button type="button" class="btn blue btn-sm">Configuration</button>
																</a> -->
																 <a href="error.jsp?tsthostname=<%=tsthostname%>">
																		<button type="button" class="btn red btn-sm">Logs</button>
																</a> 
																<!-- <a href="#">
																		<button type="button" class="btn default btn-sm">Data Source</button>
																</a> -->
																<img src="./assets/global/img/spacer.png" width=110px />
                                                        <a href="main.jsp">
                                                       
                                                        <span class="glyphicon glyphicon-arrow-left"></span>
                                                        </a>
																</th>
														</thead>
														<tr>
															<td></td>

															<td><span class="bold theme-font"></span></td>
														</tr>

													</table>




												</div>

											</div>

										</div>

										<!-- END PORTLET -->

									</div>								</div>

								<div class="portlet light">
									<div class="portlet-title">

										<table>
											<tr>
												<td>
												
												<iframe src="D:/Users/pushkar_s/Desktop/local.txt" width=1110 height=750>
												
												</iframe>
												
												<!-- <div class="caption" id="error-log" border="2">
												
												</div> -->
												</td>
											</tr>

										</table>

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
	<!-- END INNER FOOTER -->
	<!-- END FOOTER -->
	<!--[if lt IE 9]>
<script src="./assets/global/plugins/respond.min.js"></script>
<script src="./assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
	<!-- BEGIN CORE PLUGINS -->
	<script src="./assets/global/plugins/jquery.min.js"
		type="text/javascript"></script>
	<script src="./assets/global/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="./assets/global/plugins/js.cookie.min.js"
		type="text/javascript"></script>
	<script
		src="./assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
		type="text/javascript"></script>
	<script
		src="./assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="./assets/global/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script src="./assets/global/plugins/uniform/jquery.uniform.min.js"
		type="text/javascript"></script>
	<script
		src="./assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script src="./assets/global/plugins/moment.min.js"
		type="text/javascript"></script>
	<script
		src="./assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js"
		type="text/javascript"></script>
	<script src="./assets/global/plugins/morris/morris.min.js"
		type="text/javascript"></script>
	<script src="./assets/global/plugins/morris/raphael-min.js"
		type="text/javascript"></script>
	<script src="./assets/global/plugins/counterup/jquery.waypoints.min.js"
		type="text/javascript"></script>
	<script src="./assets/global/plugins/counterup/jquery.counterup.min.js"
		type="text/javascript"></script>
	<script src="./assets/global/plugins/fullcalendar/fullcalendar.min.js"
		type="text/javascript"></script>
	<script src="./assets/global/plugins/flot/jquery.flot.min.js"
		type="text/javascript"></script>
	<script src="./assets/global/plugins/flot/jquery.flot.resize.min.js"
		type="text/javascript"></script>
	<script
		src="./assets/global/plugins/flot/jquery.flot.categories.min.js"
		type="text/javascript"></script>
	<script
		src="./assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js"
		type="text/javascript"></script>
	<script src="./assets/global/plugins/jquery.sparkline.min.js"
		type="text/javascript"></script>
	<script src="./assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js"
		type="text/javascript"></script>
	<script
		src="./assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js"
		type="text/javascript"></script>
	<script
		src="./assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js"
		type="text/javascript"></script>
	<script
		src="./assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js"
		type="text/javascript"></script>
	<script
		src="./assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js"
		type="text/javascript"></script>
	<script
		src="./assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js"
		type="text/javascript"></script>
	<script
		src="./assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="./assets/global/scripts/app.min.js" type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="./assets/pages/scripts/dashboard.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<!-- BEGIN THEME LAYOUT SCRIPTS -->
	<script src="./assets/layouts/layout3/scripts/layout.min.js"
		type="text/javascript"></script>
	<script src="./assets/layouts/layout3/scripts/demo.min.js"
		type="text/javascript"></script>
	<script src="./assets/layouts/global/scripts/quick-sidebar.min.js"
		type="text/javascript"></script>
	<!-- END THEME LAYOUT SCRIPTS -->
</body>

</html>