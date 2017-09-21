<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*,java.util.*"%>
<%!Document doc=null; %>
<%
DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
DocumentBuilder db = dbf.newDocumentBuilder();
//For local
doc = db.parse("D:\\Users\\pushkar_s\\Desktop\\Rainier\\RAINIER\\WebContent\\dashboard.xml"); 
//For Server
 //doc = db.parse("/tmp/HC/dashboard.xml"); 

NodeList n1= doc.getElementsByTagName("tag_1");
NodeList n2= doc.getElementsByTagName("tag_2");
NodeList n3= doc.getElementsByTagName("tag_3");
NodeList n4= doc.getElementsByTagName("TST_Type");
NodeList n6= doc.getElementsByTagName("Header");
NodeList n7= doc.getElementsByTagName("hostname");
NodeList n8= doc.getElementsByTagName("IPaddress");
Document doc1=null;

try
{
 doc1 = db.parse("D:\\Users\\pushkar_s\\Desktop\\Rainier\\RAINIER\\WebContent\\Health.xml"); 
// doc1 = db.parse("/tmp/HC/Health.xml");
}
catch(Exception e){
	Thread.sleep(1000);
//doc1 = db.parse("http://localhost:8989/RAINIER/Health.xml"); 
	doc1 = db.parse("/tmp/HC/Health.xml");
}


NodeList node1= doc1.getElementsByTagName("shop-main1_App_shop");
NodeList node2= doc1.getElementsByTagName("shop-fulfill_App_shop");
NodeList node3= doc1.getElementsByTagName("sales-main1_App_sales-atgservice");
NodeList node4= doc1.getElementsByTagName("shop-auth_App_shop");
NodeList node5= doc1.getElementsByTagName("sales-main1_App_sales-frontend");

List<NodeList> listOfNodes=new ArrayList<NodeList>();
listOfNodes.add(node1);
listOfNodes.add(node2);
listOfNodes.add(node3);
listOfNodes.add(node4);
listOfNodes.add(node5);
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
                    <a href="javascript:;" class="menu-toggler">
                    
                    </a>
                    <!-- END RESPONSIVE MENU TOGGLER -->
                    <!-- BEGIN TOP NAVIGATION MENU -->
                    <div class="top-menu">
                    
                    
                        <ul class="nav navbar-nav pull-right">             
                            
                            <!-- BEGIN USER LOGIN DROPDOWN -->
                            <li class="dropdown dropdown-user dropdown-dark">
                                
                                
                                <img src="./assets/layouts/layout3/img/Rainier.png" title="Example of title text" />
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
                                <a href="main.jsp"> Dashboard
                                    <span class="arrow"></span>
                                </a> 
                            </li>
                            <li class="menu-dropdown mega-menu-dropdown  ">
                                <a href="wiki-sales.jsp"> EM Wiki
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="menu-dropdown classic-menu-dropdown ">
                                <a href="reports.jsp"> Reports
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <!-- <li class="menu-dropdown mega-menu-dropdown  mega-menu-full">
                                <a href="javascript:;"> Contacts
                                    <span class="arrow"></span>
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
                            <h1>SSL  CERTIFICATES
                               
                            </h1>
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
										 <div class="portlet box blue">
                                        <div class="portlet-title">
                                            <div class="caption">
                                                <i></i>Environments </div>
                                            
                                        </div>
                                        
                                        <div class="portlet-body">
                                            <div class="table-responsive">
                                                <table class="table table-condensed table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th> Test Server </th>
                                                            <th> Server Name</th>
                                                            <th> Instance</th>
                                                            <th> URL </th>
                                                            <th> Expiary Date </th>
                                                            <th> Renew </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    
                                                    <tr>
                                                    <td>TST01</td>
                                                    <td>ecomtest01.bodc.att.com </td>
                                                    <td>httpd-bpmrt	 </td>
                                                    <td>oce4hybpmrt.test.att.com</td>
                                                    <td>2016-09-13 00:00:00 PDT</td>
                                                    <td><button type="button" class="btn green btn-sm">Renew</button></td>
                                                    </tr>
									 <%--  <%
                               NodeList nList = doc.getElementsByTagName("server");
                             int nodeCount = nList.getLength();
                             
                               
                            
						 		for(int i=0;i<nodeCount;i++)
						 		{
						 	 
						 			
								 		%>
                                                    
                                                        <tr>
                                                            <td> <%= n6.item(i).getFirstChild().getNodeValue() %> </td>
                                                            <td> <%= n7.item(i).getFirstChild().getNodeValue() %> </td>
                                                            
                                                            <td>
		                                                            <%
		                                                            for(int n=0;n<5;n++){
		                                                            	
		                                                            String upAndDown=listOfNodes.get(n).item(i).getFirstChild().getNodeValue();
		                                                            String tempo=listOfNodes.get(n).item(i).getFirstChild().getParentNode().getNodeName();
		                                                            if(upAndDown.equalsIgnoreCase("Y"))
		                                                            {
		                                                             %>
		                                                            <img src="./assets/global/img/ok1.png" title="<%=tempo%>"/>
																	<%}
		                                                            else{%>
																		<img src="./assets/global/img/ko1.png" title="<%=tempo%>"/>
																	<%}
																	}%>	
                                                            
                                                            
                                                             </td>
                                                            <td> <button type="button" class="btn default btn-sm" onclick="window.location='details.jsp?tsthostname=<%= n7.item(i).getFirstChild().getNodeValue() %>'">Details</button> </td>
                                                            
                                                        </tr>
                                                        <%			
						 			}
						 		
							
						 						 
							 %> --%>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                    
                                            </div>
                                        </div>
                                    </div>
                                   
                                    <!-- END CONDENSED TABLE PORTLET-->
							 
							 
							 <!-- BEGIN CONDENSED TABLE PORTLET-->
							 
							 
							 
							 <%-- 
                                 
                                    <div class="portlet box green-meadow">
                                        <div class="portlet-title">
                                            <div class="caption">
                                                <i class="fa fa-picture"></i>Short Interval & Sustainment Environment (TST05-08)</div>
                                            <div class="tools">
                                                <a href="javascript:;" class="collapse"> </a>
                                                <!-- <a href="javascript:;" class="reload"> </a> -->
                                         </div>
                                        </div>
                                        
                        
                                        <div class="portlet-body">
                                            <div class="table-scrollable">
                              
						         
                              
                              <table class="table table-condensed table-hover">
                              <tr>
                              
                                <%
                               int st=0;
						 		for(int i=0;i<nodeCount;i++)
						 		{
						 		 String tst_type= n4.item(i).getFirstChild().getNodeValue();
						 			
						 			
						 			if(tst_type.equalsIgnoreCase("Sustainment")){
						 				
						 				if(st%4!=0){
								 			
								 		}else{ %> 
								 		<tr>
								 		<% 	
								 		}
						 				
						 				st++;
								 		%>
								 		
								 		
								 		
								 		
								 		
                              <td>
                                    <!-- BEGIN Portlet PORTLET-->
								<div class="portlet box green-meadow"> 
									<!-- <div> -->
                                         <div class="portlet-title"> 
                                        <!-- <div> -->
                                             <div class="caption">
                                             
                                             <b><%= n6.item(i).getFirstChild().getNodeValue() %></b> 
                                             
                                             
		                                     
		                                     <%= n6.item(i).getFirstChild().getNodeValue() %>
		                                             
		                                             
		                                            <!--   <a href=#><b>Details</b></a> -->
		                                              <button type="button" class="btn default btn-sm" onclick="window.location='details.jsp?tsthostname=<%= n7.item(i).getFirstChild().getNodeValue() %>'">Details</button>
		                                             
		                                             
		                                           
                                             
                                             
                                             </div> 
                                        </div>
                                        <div class="portlet-body">
										
										
										<table class="table table-bordered table-hover">
                                                   
                                                    <tbody>
                                                        <tr>
                                                            <td class="active"> <%= n1.item(i).getFirstChild().getNodeValue() %></td>
                                                            <td class="success"><%= n7.item(i).getFirstChild().getNodeValue() %> </td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td class="active"> <%= n2.item(i).getFirstChild().getNodeValue() %></td>
                                                            <td class="success"><%= n8.item(i).getFirstChild().getNodeValue() %> </td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td class="active"><%= n3.item(i).getFirstChild().getNodeValue()%> </td>
                                                            <td>  
															
															<%
		                                                            for(int n=0;n<5;n++){
		                                                            	
		                                                            String upAndDown=listOfNodes.get(n).item(i).getFirstChild().getNodeValue();
		                                                            String tempo=listOfNodes.get(n).item(i).getFirstChild().getParentNode().getNodeName();
		                                                          
		                                                            if(upAndDown.equalsIgnoreCase("NA"))
		                                                            {%>
		                                                            	NA
		                                                            <%
		                                                            }		                                                            
		                                                            else
		                                                            if(upAndDown.equalsIgnoreCase("Y"))
		                                                            {
		                                                             %>
		                                                            <img src="./assets/global/img/ok1.png" title="<%=tempo%>"/>
																	<%}
		                                                            else{%>
																		<img src="./assets/global/img/ko1.png" title="<%=tempo%>"/>
																	<%}
																	}%>	
																	
															
															 </td>
                                                            
                                                        </tr>
                                                        
                                                         <tr>
                                                            
                                                            <td colspan=2 class="Active" align="right">
                                                           <button type="button" class="btn default btn-sm" onclick="window.location='details.jsp?tsthostname=<%= n7.item(i).getFirstChild().getNodeValue() %>'">Details</button> 
                                                            </td>
                                                            
                                                        </tr> 
														
														
														</table>
							
										
										
										</div>
										</div>
                                    
                                    <!-- END Portlet PORTLET-->
								
									
							
							 </td>
							 <%
						 			}
                               
							 }					 
							 %>
							 
							 
							 
									</tr>        
									
                                                </table>
                                                
                                            </div>
                                        </div>
                                    </div>
                                   
                                    <!-- END CONDENSED TABLE PORTLET-->
                                    
                                    <!-- BEGIN CONDENSED TABLE PORTLET-->
                                 
                                    <div class="portlet box red">
                                        <div class="portlet-title">
                                            <div class="caption">
                                                <i class="fa fa-picture"></i>Incubators Environment (TST09-14)</div>
                                            <div class="tools">
                                                <a href="javascript:;" class="collapse"> </a>
                                                <!-- <a href="javascript:;" class="reload"> </a> -->
                                         </div>
                                        </div>
                                        
                        
                                        <div class="portlet-body">
                                            <div class="table-scrollable">
                              
						         
                              
                              <table class="table table-condensed table-hover">
                              <tr>
                              
                                <%
                               
                               int s=0;
						 		for(int i=0;i<nodeCount;i++)
						 		{
						 		 String tst_type= n4.item(i).getFirstChild().getNodeValue();
						 			
						 			
						 			if(tst_type.equalsIgnoreCase("Incubators")){
						 				
						 				if(s%4!=0){
								 			
								 		}else{ %> 
								 		<tr>
								 		<% 	
								 		}
						 				
						 				s++;
								 		%>
						 		
						 
						 
						 
						
						 
						 
                              <td>
                                    <!-- BEGIN Portlet PORTLET-->
									 <div class="portlet box red"> 
									<!-- <div> -->
                                         <div class="portlet-title">
                                        <!-- <div> -->
                                           <div class="caption"><%= n6.item(i).getFirstChild().getNodeValue() %>
                                             
                                                     
		                                   
		                                            <!--   <a href=# ALINK="white"><b>Details</b></a> -->
		                                              <button type="button" class="btn default btn-sm" onclick="window.location='details.jsp?tsthostname=<%= n7.item(i).getFirstChild().getNodeValue() %>'">Details</button>
		                                     
                                             
                                             </div> 
                                        </div>
                                        <div class="portlet-body">
										
										
										<table class="table table-bordered table-hover">
                                                   
                                                    <tbody>
                                                        <tr>
                                                            <td class="active"> <%= n1.item(i).getFirstChild().getNodeValue() %></td>
                                                            <td class="success"><%= n7.item(i).getFirstChild().getNodeValue() %> </td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td class="active"> <%= n2.item(i).getFirstChild().getNodeValue() %></td>
                                                            <td class="success"><%= n8.item(i).getFirstChild().getNodeValue() %> </td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td class="active"><%= n3.item(i).getFirstChild().getNodeValue()%> </td>
                                                            <td>  
															<%
		                                                            for(int n=0;n<5;n++){
		                                                            	
		                                                            String upAndDown=listOfNodes.get(n).item(i).getFirstChild().getNodeValue();
		                                                          
		                                                            String tempo=listOfNodes.get(n).item(i).getFirstChild().getParentNode().getNodeName();
		                                                            if(upAndDown.equalsIgnoreCase("NA"))
		                                                            {%>
		                                                            	NA
		                                                            	<%
		                                                            }else
		                                                            if(upAndDown.equalsIgnoreCase("Y"))
		                                                            {
		                                                             %>
		                                                            <img src="./assets/global/img/ok1.png" title="<%=tempo%>"/>
																	<%}
		                                                            else{%>
																		<img src="./assets/global/img/ko1.png" title="<%=tempo%>"/>
																	<%}
																	}%>	
																	
															
															 </td>
                                                            
                                                        </tr>
                                                        
                                                         <tr>
                                                            <td colspan=2 class="Active" align="right">
                                                            <button type="button" class="btn default btn-sm" onclick="window.location='details.jsp?tsthostname=<%= n7.item(i).getFirstChild().getNodeValue() %>'">Details</button> 
                                                            </td>
                                                        </tr>
                                                        </table>
							
										
										
										</div>
										</div>
                                    
                                    <!-- END Portlet PORTLET-->
								
									
							
							 </td>
							 <%
							 
						 			}
							 }					 
							 %>
							 
							 
							 
									</tr>        
									
                                                </table>
                                                
                                            </div>
                                        </div>
                                    </div>
                                   
                                    <!-- END CONDENSED TABLE PORTLET-->
                                    
                                    <!-- BEGIN CONDENSED TABLE PORTLET-->
                                 
                                    <div class="portlet box yellow">
                                        <div class="portlet-title">
                                            <div class="caption">
                                                <i class="fa fa-picture"></i>Projects Test Servers Environment (TST15-36)</div>
                                            <div class="tools">
                                                <a href="javascript:;" class="collapse"> </a>
                                                <!-- <a href="javascript:;" class="reload"> </a> -->
                                         </div>
                                        </div>
                                        
                        
                                        <div class="portlet-body">
                                            <div class="table-scrollable">
                              
						         
                              
                              <table class="table table-condensed table-hover">
                              <tr>
                              
                                 <%
				
                               int t=0;
						 		for(int i=0;i<nodeCount;i++)
						 		{
						 		 String tst_type= n4.item(i).getFirstChild().getNodeValue();
						 			if(tst_type.equalsIgnoreCase("Test")){
						 				
						 				if(t%4!=0){
								 			
								 		}else{ %> 
								 		<tr>
								 		<% 	
								 		}
						 				
						 				t++;
								 		%>
						 		
						 
						 
						 
						
						 
						 
                              <td>
                                    <!-- BEGIN Portlet PORTLET-->
									 <div class="portlet box yellow">
									<!-- <div> -->
                                         <div class="portlet-title"> 
                                        <!-- <div> -->
                                              <div class="caption"><%= n6.item(i).getFirstChild().getNodeValue() %>
                                                     
		                                     
		                                             <!--  <a href=#><b>Details</b></a> -->
		                                              <button type="button" class="btn default btn-sm" onclick="window.location='details.jsp?tsthostname=<%= n7.item(i).getFirstChild().getNodeValue() %>'">Details</button>
		                                     
                                             
                                             
                                             </div> 
                                        </div>
                                        <div class="portlet-body">
										
										
										<table class="table table-bordered table-hover">
                                                   
                                                    <tbody>
                                                        <tr>
                                                            <td class="active"> <%= n1.item(i).getFirstChild().getNodeValue() %></td>
                                                            <td class="success"><%= n7.item(i).getFirstChild().getNodeValue() %> </td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td class="active"> <%= n2.item(i).getFirstChild().getNodeValue() %></td>
                                                            <td class="success"><%= n8.item(i).getFirstChild().getNodeValue() %> </td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td class="active"><%= n3.item(i).getFirstChild().getNodeValue()%> </td>
                                                            <td>  
															<%
		                                                            for(int n=0;n<5;n++){
		                                                            	
		                                                            String upAndDown=listOfNodes.get(n).item(i).getFirstChild().getNodeValue();
		                                                       
		                                                            String tempo=listOfNodes.get(n).item(i).getFirstChild().getParentNode().getNodeName();
		                                                          	
		                                                            if(upAndDown.equalsIgnoreCase("NA"))
		                                                            {%>
																			NA		                                                            
		                                                            <%
		                                                            }
		                                                            else
		                                                            if(upAndDown.equalsIgnoreCase("Y"))
		                                                            {
		                                                             %>
		                                                            <img src="./assets/global/img/ok1.png" title="<%=tempo%>"/>
																	<%}
		                                                            else{%>
																		<img src="./assets/global/img/ko1.png" title="<%=tempo%>"/>
																	<%}
																	}%>	
																																
															 </td>
                                                            
                                                        </tr>
                                                        
                                                    <tr>
                                                            
                                                            <td colspan=2 class="Active" align="right">
                                                            <button type="button" class="btn default btn-sm" onclick="window.location='details.jsp?tsthostname=<%= n7.item(i).getFirstChild().getNodeValue() %>'">Details</button> 
                                                            </td>
                                                            
                                                        </tr>
														
														
														</table>
																			
										</div>
										</div>
                                    
                                    <!-- END Portlet PORTLET-->
								
									
							
							 </td>
							 <%
							 
						 			}
							 }					 
							 %>
							 
							 
							 
									</tr>        
									
                                                </table>
                                                
                                            </div>
                                        </div>
                                    </div> --%>
                                   
                                    <!-- END CONDENSED TABLE PORTLET-->
							 
                    </div>
               <!--  </div>
                END PAGE CONTENT BODY
                END CONTENT BODY
            </div>
            END CONTENT
            
        </div> -->
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
        <script src="./assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
        
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