<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<%@ page import="com.fetch.url.DataFromUrl"	import="java.util.*,java.io.*"%>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*"%>
<%-- <%@include file="XmlToJsp.jsp" %> --%>
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
        <link rel="shortcut icon" href="favicon.ico" /> 
        <script type="text/javascript">
        function getTitalButtons()
        {
        <%
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        DocumentBuilder db = dbf.newDocumentBuilder();
        /* Document doc = db.parse(new File("D:/Users/pushkar_s/Desktop/Rainier/RAINIER/WebContent/wiki-link.xml")); */
        Document doc = db.parse(new File("/tmp/HC/wiki-link.xml"));
        NodeList titalNode=doc.getElementsByTagName("tital");
        NodeList urlNode=doc.getElementsByTagName("url");
        %>
        
        }
        
        function getURL(url)
        {
                	var oldFrame= document.getElementById("fixedFrame");
                	
        	 var iframe = document.createElement('iframe');
        	 iframe.frameBorder=1;
        	 iframe.width="1150px";
        	 iframe.height="650px";
        	 iframe.id="fixedFrame";
        	 iframe.setAttribute("src", url);
        	 if(oldFrame==null)
        		 {
        		 document.getElementById("result").appendChild(iframe);
        		 }else{
        	 	document.getElementById("result").replaceChild(iframe,oldFrame);//iframe;
        		 }
         
        
        }
        </script>
        
      	</head>
    <!-- END HEAD -->
	
	

    <body class="page-container-bg-solid page-boxed" onload="getTitalButtons();">
     
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
                            <li class="menu-dropdown mega-menu-dropdown">
                                <a href="main.jsp"> Dashboard
                                    <span class="arrow"></span>
                                </a> 
                            </li>
                            <li class="menu-dropdown classic-menu-dropdown active">
                                <a href="wiki-sales.jsp"> EM Wiki
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="menu-dropdown classic-menu-dropdown ">
                                <a href="reports.jsp"> Reports
                                    <span class="arrow"></span>
                                </a>
                            <!-- </li>
                            <li class="menu-dropdown mega-menu-dropdown  mega-menu-full">
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
                            <h1>Sales WiKi</h1>                             
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
								
                    
					<!-- BEGIN CONDENSED TABLE PORTLET-->
                    
                    <form>
                   
<table class="table table-bordered table-hover">
<%-- <tr>

<td colspan=2>
<!-- onclick="getButns();" -->
<button type="button" class="btn blue btn-outline sbold uppercase" onclick="getEnvButtons('7010','<%=tsthostname%>','blue');" > Shop Main</button>
<button type="button" class="btn red btn-outline sbold uppercase"  onclick="getEnvButtons('7020','<%=tsthostname%>','red');">Sales Main</button>
<button type="button" class="btn green btn-outline sbold uppercase"  onclick="getEnvButtons('7040','<%=tsthostname%>','green');">Shop Fulfillment</button>
<button type="button" class="btn yellow btn-outline sbold uppercase" onclick="getEnvButtons('7140','<%=tsthostname%>','yellow');">Sales Fulfillment</button>

<div class="col-md-4">

</div>
</td>


</tr> --%>

<tr>
<td>

<div id="buttons">
<%
for(int i=0;i<titalNode.getLength();i++)
{
%>
<button type="button" name="" value="<%=urlNode.item(i).getTextContent()%>"  onclick="getURL('<%=urlNode.item(i).getTextContent()%>');" class="btn blue btn-sm"><%=titalNode.item(i).getTextContent()%></button>
<%}%>
</div>
</td>
</tr>
<tr>
<td>


<div id="result">
<!-- <iframe src="http://ecom.cingular.net/confluence/display/EM/Environment+Management+-+Sales" height=650px width=1450px></iframe> -->
 <!-- <iframe value="NO Data Presently, Please click on button" id="fixedFrame"> NO Data Presently, Please click on button </iframe> -->
</div>


</td>
</tr>

</table>
</form>
             
							 
                    </div>
                </div>
                <!-- END PAGE CONTENT BODY -->
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