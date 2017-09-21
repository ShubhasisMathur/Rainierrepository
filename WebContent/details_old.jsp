<%@page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<%@page import="javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*,java.util.*"%>


<%
DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
DocumentBuilder db = dbf.newDocumentBuilder();
Document doc = db.parse("http://localhost:8080/RAINIER/Health.xml");
 
NodeList n1= doc.getElementsByTagName("tag1");
NodeList n2= doc.getElementsByTagName("tag2");
NodeList n3= doc.getElementsByTagName("tag3");
NodeList n4= doc.getElementsByTagName("tag4");
NodeList n5= doc.getElementsByTagName("tag5");
NodeList n6= doc.getElementsByTagName("tag6");
NodeList n7= doc.getElementsByTagName("tag7");
NodeList n8= doc.getElementsByTagName("tag8");
NodeList n9= doc.getElementsByTagName("tag9");
NodeList n10= doc.getElementsByTagName("tag10");
NodeList n22= doc.getElementsByTagName("tag11");
NodeList n23= doc.getElementsByTagName("tag12");
NodeList n24= doc.getElementsByTagName("tag13");
NodeList n25= doc.getElementsByTagName("tag14");
NodeList n26= doc.getElementsByTagName("tag15");
NodeList n27= doc.getElementsByTagName("tag16");
NodeList n28= doc.getElementsByTagName("tag17");
NodeList n29= doc.getElementsByTagName("tag18");
NodeList n30= doc.getElementsByTagName("tag19");

NodeList n12= doc.getElementsByTagName("hostname");
NodeList n13= doc.getElementsByTagName("Disk");
NodeList n14= doc.getElementsByTagName("Disk_auth");
NodeList n15= doc.getElementsByTagName("Memory");
NodeList n16= doc.getElementsByTagName("Memory_auth");
NodeList n17= doc.getElementsByTagName("CPU");
NodeList n18= doc.getElementsByTagName("CPU_auth");
NodeList n19= doc.getElementsByTagName("Load");
NodeList n20= doc.getElementsByTagName("Load_auth");
NodeList n21= doc.getElementsByTagName("URL_shop");


Element docEle = doc.getDocumentElement();
NodeList list = docEle.getChildNodes();


NodeList node1= doc.getElementsByTagName("shop-main1_App_shop");
NodeList node2= doc.getElementsByTagName("shop-fulfill_App_shop");
NodeList node3= doc.getElementsByTagName("sales-main1_App_sales-atgservice");
NodeList node4= doc.getElementsByTagName("shop-auth_App_shop");
NodeList node5= doc.getElementsByTagName("sales-main1_App_sales-frontend");

Map<String,NodeList> listOfNodes=new HashMap<String,NodeList>();
listOfNodes.put("shop-main1_App_shop",node1);
listOfNodes.put("shop-fulfill_App_shop",node2);
listOfNodes.put("sales-main1_App_sales-atgservice",node3);
listOfNodes.put("shop-auth_App_shop",node4);
listOfNodes.put("sales-main1_App_sales-frontend",node5);
%>

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
                                
                                 <img src="./assets/layouts/layout3/img/Rainier.png"/>
                                  <img src="./assets/layouts/layout3/img/att.png" height="55px" width ="75px"/>
                                                           
                                
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
                                <!-- <a href="http://localhost:8080/RAINIER/main.jsp"> Dashboard -->
                                <a href="main.jsp"> Dashboard
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
                                                               
                                                            </div>
                                                            
                                                            
                                                        </div>
                                                        
                                                        <div class="table-scrollable table-scrollable-borderless">
                                                            <table class="table table-hover table-light">
                                                                <thead>
                                                                    <tr class="uppercase">
                                                                        <th> Instance </th>
                                                                        <th> Status </th>
                                                                    </tr>
                                                                </thead>
                                                                			
                                                                			
                                                             
															<% int k=0;
		                                                            for(int n=0;n<5;n++){
		                                                            	%>
		                                                            	  <tr>
                                                            <td class="active"><%= n3.item(k).getFirstChild().getNodeValue()%> </td>
		                                                            	<td> 
		                                                            	<%
		                                                            String upAndDown=listOfNodes.get(n).item(k).getFirstChild().getNodeValue();
		                                                            System.out.println("====>>>  "+upAndDown);
		                                                            if(upAndDown.equalsIgnoreCase("Y"))
		                                                            {
		                                                             %>
		                                                            <img src="./assets/global/img/ok1.png"/>
																	<%}
		                                                            else{%>
																		<img src="./assets/global/img/ko1.png"/>
																	<%}
		                                                            k++;
																	}%>	
																	
																</td>
															
                                                            
                                                        </tr>
                                                                			
                                                
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- END PORTLET -->
                                            </div>
                                            
                                              	<%int j=0; %>
                                              	
                                        
                                              	
                                              	<%String tsthostname2= (String)request.getParameter("tsthostname");
                                              
                                              	for(j=0;j<list.getLength()-1;j++){
                                              		String serverNode2=n12.item(j).getFirstChild().getNodeValue();
                                              		if(serverNode2==null)
                                              		{
                                              			System.out.println("ServerNode is null");
                                              		}
                                              		else
                                              		{
                                              		System.out.println("serverNode  :: "+serverNode2);
                                              	if(serverNode2.equalsIgnoreCase(tsthostname2)){
                                              	%>
                                            
                                            <div class="col-md-6">
                                            
                                                <!-- BEGIN PORTLET -->
                                                <div class="portlet light ">
                                                    <div class="portlet-title tabbable-line">
                                                        <div class="caption caption-md">
                                                            <i class="icon-globe theme-font hide"></i>
                                                            <span class="caption-subject font-blue-madison bold uppercase">Server Summary</span>
                                                         <img src="./assets/global/img/spacer.png" width=350px />
                                                        <a href="main.jsp">
                                                       
                                                        <span class="glyphicon glyphicon-arrow-left"></span>
                                                        </a>
                                                        </div>
                                                       
                                                    </div>
                                                    <div class="portlet-body">
                                                        <table class="table table-hover table-light">
                                                                <thead>
																<tr class="uppercase">
                                                                        <th colspan=2> 
																																																						
																		<!-- <a href="http://localhost:8080/RAINIER/dyn-admin.jsp"> -->
																		<a href="dyn-admin.jsp">
																		 <button type="button" class="btn blue">Dyn Admin</button> 
																		</a>
																		
																		<a href="#">
																		 <button type="button" class="btn green">Configuration</button> 
																		</a>
																		
																		<a href="#">
																		 <button type="button" class="btn blue btn-sm">Error</button> 
																		</a>
																		
																		<a href="#">
																		 <button type="button" class="btn red">Database</button> 
																		</a>
																																																						
																		</th>
                                                                        
                                                                    </tr>
                                                                    <!-- <tr class="uppercase">
                                                                        <th> Instance </th>
                                                                        <th> Status </th>
                                                                    </tr> -->
                                                                </thead>
                                                                <tr>
                                                                    <td>
                                                                    
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                   <%= n1.item(j).getFirstChild().getNodeValue() %>
                                                                    
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n12.item(j).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr>
																<tr>
                                                                    <td>
                                                                    <%= n2.item(j).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n13.item(j).getFirstChild().getNodeValue()%></span>
                                                                    </td>
                                                                </tr>
																<tr>
                                                                    <td>
                                                                    <%= n3.item(j).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n14.item(j).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr>
																
																<tr>
                                                                    <td>
                                                                    <%= n4.item(j).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n15.item(j).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    <%= n5.item(j).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n16.item(j).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    <%= n6.item(j).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n17.item(j).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    <%= n7.item(j).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n18.item(j).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                   <%= n8.item(j).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n19.item(j).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    <%= n9.item(j).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n20.item(j).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    <%= n10.item(j).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n21.item(j).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr>      
                                                            </table>
                                                              
                                                              
                                              				                                       	
                                              		
                                              		<%}
                                              		}
                                              		}%>
                                                             
                                                             
                                                               
                                                             
                                                             
                                                    </div>
                                                  
                                                </div>
                                          	
                                               </div>
						
                                                <!-- END PORTLET -->
                                        
                                            </div>
                                        </div>
                                        
                                        
                                        </div></div></div>
                                    </div>
                                    <!-- END PROFILE CONTENT -->
                                </div>
                            </div>
                        </div>
                        <!-- END PAGE CONTENT INNER -->	
                <!-- END CONTENT BODY -->
            
            <!-- END CONTENT -->
            
      
        <!-- END CONTAINER -->
        <!-- BEGIN FOOTER -->
        <!-- BEGIN INNER FOOTER -->
        <div class="page-footer">
            <div class="container"> 2016 &copy; ATT EM Team </div>
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