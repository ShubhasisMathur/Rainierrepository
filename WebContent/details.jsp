<%@page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<%@page import="javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*"%>


<%
DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
DocumentBuilder db = dbf.newDocumentBuilder();
//Document doc = db.parse("D:\\Users\\pushkar_s\\Desktop\\Rainier\\RAINIER\\WebContent\\Health.xml");
//Document doc = db.parse("http://localhost:8989/RAINIER/Health.xml");  
Document doc = null;
//doc=db.parse("/tmp/HC/Health.xml");

try
{

//doc = db.parse("D:\\Users\\pushkar_s\\Desktop\\Rainier\\RAINIER\\WebContent\\Health.xml"); 
doc = db.parse("/tmp/HC/Health.xml");
}
catch(Exception e){
	Thread.sleep(1000);
//	doc = db.parse("http://localhost:8989/RAINIER/Health.xml"); 
	doc = db.parse("/tmp/HC/Health.xml");
}


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
NodeList n31= doc.getElementsByTagName("shop-main1_App_shop");
NodeList n32= doc.getElementsByTagName("shop-fulfill_App_shop");
NodeList n33= doc.getElementsByTagName("sales-main1_App_sales-atgservice");
NodeList n34= doc.getElementsByTagName("shop-auth_App_shop");
NodeList n35= doc.getElementsByTagName("sales-main1_App_sales-frontend");
NodeList n36= doc.getElementsByTagName("sales-sjob_App_sales-atgservice");
NodeList n37= doc.getElementsByTagName("shop-sjob_App_shop");
NodeList n38= doc.getElementsByTagName("sales-auth_App_aem561_base");
NodeList n39= doc.getElementsByTagName("standalone-main1_App_standalone");

Element docEle = doc.getDocumentElement();
NodeList list = docEle.getChildNodes();
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
        <link rel="shortcut icon" href="favicon.ico" />
        
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load('current', {'packages':['gauge']});
    
    google.charts.setOnLoadCallback(drawGauge);
    
    var gaugeOptions = {min: 0, max: 100, yellowFrom: 80, yellowTo: 90,
      redFrom: 90, redTo: 100, minorTicks: 5};
    var gauge;

    function drawGauge() {
    	 <%
         String tstStr=request.getParameter("tsthostname");
             String[] tsts=tstStr.split("\\.");
         String tstNoStr=tsts[0];
         tstNoStr=tstNoStr.replaceAll("ecomtest", "");
         System.out.println(tstNoStr);
         int tstNo=Integer.parseInt(tstNoStr);
         String dp=n13.item(tstNo-1).getFirstChild().getNodeValue();
         String da=n14.item(tstNo-1).getFirstChild().getNodeValue();
         
         dp=dp.replaceAll("%", "");
         da=da.replaceAll("%", "");
      
         %>
        var discPub= <%=dp %>;
         var discAuth=<%=da %>;
         
      gaugeData = new google.visualization.DataTable();
      gaugeData.addColumn('number', 'Publish');
      gaugeData.addColumn('number', 'Author');
     
      
      gaugeData.addRows(2);
      gaugeData.setCell(0, 0, discPub);
      gaugeData.setCell(0, 1, discAuth);
      
      gauge = new google.visualization.Gauge(document.getElementById('gauge_div'));
      gauge.draw(gaugeData, gaugeOptions);
      
      
      google.charts.setOnLoadCallback(drawGauge1);
      
      var gaugeOptions1 = {min: 0, max: 100, yellowFrom: 80, yellowTo: 90,
        redFrom: 90, redTo: 100, minorTicks: 5};
     

      function drawGauge1() {
    	    
          <%
       
          String mp=n15.item(tstNo-1).getFirstChild().getNodeValue();
          String ma=n16.item(tstNo-1).getFirstChild().getNodeValue();
          mp=mp.replaceAll("%", "");
          ma=ma.replaceAll("%", "");
        
          %>
          var memoryPub= <%=mp %>;
          var memoryAuth=<%=ma %>;
        gaugeData1 = new google.visualization.DataTable();
        gaugeData1.addColumn('number', 'publish');
        gaugeData1.addColumn('number', 'author');
        gaugeData1.addRows(2);
        gaugeData1.setCell(0, 0, memoryPub);
        gaugeData1.setCell(0, 1, memoryAuth);
      

        gauge = new google.visualization.Gauge(document.getElementById('gauge_div1'));
        gauge.draw(gaugeData1, gaugeOptions);
        
        
        google.charts.setOnLoadCallback(drawGauge2);
        
        
        var gaugeOptions2 = {min: 0, max: 100, yellowFrom: 80, yellowTo: 90,
                redFrom: 90, redTo: 100, minorTicks: 5};
          

              function drawGauge2() {
            	  
            	  <%
               
                  String cp=n17.item(tstNo-1).getFirstChild().getNodeValue();
                  String ca=n18.item(tstNo-1).getFirstChild().getNodeValue();
                  cp=cp.replaceAll("%", "");
                  ca=ca.replaceAll("%", "");
                
                  %>
                  var cpuPub= <%=cp %>;
                  var cpuAuth=<%=ca %>;
                gaugeData2 = new google.visualization.DataTable();
                gaugeData2.addColumn('number', 'Publish');
                gaugeData2.addColumn('number', 'Author');
                gaugeData2.addRows(2);
                gaugeData2.setCell(0, 0, cpuPub);
                gaugeData2.setCell(0, 1, cpuAuth);
              

                gauge = new google.visualization.Gauge(document.getElementById('gauge_div2'));
                gauge.draw(gaugeData2, gaugeOptions);
        
    }} } 
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
                                                             
															
															
															<%int i=0; %>
                                              	
                                        	<%!String tsthostname=null; %>
                                              	
                                              	<% tsthostname= (String)request.getParameter("tsthostname");
                                              	System.out.println("tsthostname :: "+tsthostname);
                                                NodeList nList = doc.getElementsByTagName("server");
                                                int nodeCount = nList.getLength();
                                              	
                                              	for(i=0;i<nodeCount;i++){
                                              		String serverNode=n12.item(i).getFirstChild().getNodeValue().toString();
                                              		System.out.println("Server Node  :  "+n12.item(i).getFirstChild().getNodeValue().toString());
                                              		
                                              		if(serverNode==null)
                                              		{
                                              			System.out.println("ServerNode is null");
                                              		}
                                              		else
                                              		{
                                              	if(serverNode.equalsIgnoreCase(tsthostname)){
                                              	%>
															
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
                                                                
																
																
                                                                
                                                                <tr>
                                                                    <td>
                                                                     <%= n22.item(i).getFirstChild().getNodeValue() %>		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                    <%
                                                                    String instStatus= (n31.item(i).getFirstChild().getNodeValue()).toString();
                                                                    if(instStatus.equalsIgnoreCase("Y"))
		                                                            {
		                                                             %>
		                                                            <img src="./assets/global/img/ok1.png"/>
																	<%}
		                                                            else{%>
																		<img src="./assets/global/img/ko1.png"/>
																	<%}
																	%>  
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    <%= n23.item(i).getFirstChild().getNodeValue() %>		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <%
                                                                    String instStatus1= (n32.item(i).getFirstChild().getNodeValue()).toString();
                                                                    if(instStatus1.equalsIgnoreCase("Y"))
		                                                            {
		                                                             %>
		                                                            <img src="./assets/global/img/ok1.png"/>
																	<%}
		                                                            else{%>
																		<img src="./assets/global/img/ko1.png"/>
																	<%}
																	%>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    <%= n24.item(i).getFirstChild().getNodeValue() %>		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <%
                                                                    String instStatus3= (n33.item(i).getFirstChild().getNodeValue()).toString();
                                                                    if(instStatus3.equalsIgnoreCase("Y"))
		                                                            {
		                                                             %>
		                                                            <img src="./assets/global/img/ok1.png"/>
																	<%}
		                                                            else{%>
																		<img src="./assets/global/img/ko1.png"/>
																	<%}
																	%>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    <%= n25.item(i).getFirstChild().getNodeValue() %>		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <%
                                                                    String instStatus4= (n34.item(i).getFirstChild().getNodeValue()).toString();
                                                                    if(instStatus4.equalsIgnoreCase("Y"))
		                                                            {
		                                                             %>
		                                                            <img src="./assets/global/img/ok1.png"/>
																	<%}
		                                                            else{%>
																		<img src="./assets/global/img/ko1.png"/>
																	<%}
																	%>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    <%= n26.item(i).getFirstChild().getNodeValue() %>		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <%
                                                                    String instStatus5= (n35.item(i).getFirstChild().getNodeValue()).toString();
                                                                    if(instStatus5.equalsIgnoreCase("Y"))
		                                                            {
		                                                             %>
		                                                            <img src="./assets/global/img/ok1.png"/>
																	<%}
		                                                            else{%>
																		<img src="./assets/global/img/ko1.png"/>
																	<%}
																	%>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    <%= n27.item(i).getFirstChild().getNodeValue() %>		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                       <%
                                                                    String instStatus6= (n36.item(i).getFirstChild().getNodeValue()).toString();
                                                                    if(instStatus6.equalsIgnoreCase("Y"))
		                                                            {
		                                                             %>
		                                                            <img src="./assets/global/img/ok1.png"/>
																	<%}
		                                                            else{%>
																		<img src="./assets/global/img/ko1.png"/>
																	<%}
																	%>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    <%= n28.item(i).getFirstChild().getNodeValue() %>		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <%
                                                                    String instStatus7= (n37.item(i).getFirstChild().getNodeValue()).toString();
                                                                    if(instStatus7.equalsIgnoreCase("Y"))
		                                                            {
		                                                             %>
		                                                            <img src="./assets/global/img/ok1.png"/>
																	<%}
		                                                            else{%>
																		<img src="./assets/global/img/ko1.png"/>
																	<%}
																	%>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                   <%= n29.item(i).getFirstChild().getNodeValue() %>		
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <%
                                                                    String instStatus8= (n38.item(i).getFirstChild().getNodeValue()).toString();
                                                                    if(instStatus8.equalsIgnoreCase("Y"))
		                                                            {
		                                                             %>
		                                                            <img src="./assets/global/img/ok1.png" />
																	<%}
		                                                            else{%>
																		<img src="./assets/global/img/ko1.png" title="<%=instStatus8%>"/>
																	<%}
																	%>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
  																		<%= n30.item(i).getFirstChild().getNodeValue() %>			
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <%
                                                                    String instStatus9= (n39.item(i).getFirstChild().getNodeValue()).toString();
                                                                    if(instStatus9.equalsIgnoreCase("Y"))
		                                                            {
		                                                             %>
		                                                            <img src="./assets/global/img/ok1.png"/>
																	<%}
		                                                            else{%>
																		<img src="./assets/global/img/ko1.png"/>
																	<%}
																	%>
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
																																																						
																		</th>
                                                                        
                                                                    </tr>
                                                                    
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
                                                                   <%= n1.item(i).getFirstChild().getNodeValue() %>
                                                                    
                                                                    </td>
                                                                    
                                                                    <td colspan=2>
                                                                        <span class="bold theme-font"><%= n12.item(i).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr>
                                                             <!-- <tr class="uppercase">
                                                                        <th> Attribute </th>
                                                                        <th> Publish &nbsp;Author</th>
                                                                        
                                                             </tr>  -->
															
																<tr>
                                                                    <td>
                                                                    <%= n2.item(i).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                <div id="gauge_div" style="width:200px; height: 110px;">
                                                                </div>
                                                                    
                                                                      <%--   <span class="bold theme-font"><%= n13.item(i).getFirstChild().getNodeValue()%></span> --%>
                                                                    </td>
                                                                    <%-- <td>
                                                                    
                                                                        <div id="gauge_div" style="width:280px; height: 110px;">
                                                                </div>
                                                            
                                                                    
                                                                    <span class="bold theme-font"><%= n14.item(i).getFirstChild().getNodeValue() %></span>
                                                                    </td> --%>
                                                                </tr>
                                                                
                                                                
                                                                
																<%-- <tr>
                                                                    <td>
                                                                    <%= n3.item(i).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n14.item(i).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr> --%>
																
																<tr>
                                                                    <td>
                                                                    <%= n4.item(i).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td colspan=2>
                                                                    
                                                                    <div id="gauge_div1" style="width:200px; height: 110px;">
                                                                </div>
                                                                      <%--   <span class="bold theme-font"><%= n15.item(i).getFirstChild().getNodeValue() %></span> --%>
                                                                    </td>
                                                                    <%-- <td>
                                                                     <div id="gauge_div1" style="width:280px; height: 110px;">
                                                                </div>
                                                                        <span class="bold theme-font"><%= n16.item(i).getFirstChild().getNodeValue() %></span>
                                                                    </td> --%>
                                                                </tr>
                                                                
                                                                <%-- <tr>
                                                                    <td>
                                                                    <%= n5.item(i).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n16.item(i).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr> --%>
                                                                
                                                                <tr>
                                                                    <td>
                                                                    <%= n6.item(i).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td colspan=2>
                                                                        <%-- <span class="bold theme-font"><%= n17.item(i).getFirstChild().getNodeValue() %></span> --%>
                                                                         <div id="gauge_div2" style="width:200px; height: 110px;">
                                                                		</div>
                                                                    </td>
                                                                    <%-- <td>
                                                                   
                                                                      <span class="bold theme-font"><%= n18.item(i).getFirstChild().getNodeValue() %></span>
                                                                    </td> --%>
                                                                </tr>
                                                                
                                                                <%-- <tr>
                                                                    <td>
                                                                    <%= n7.item(i).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n18.item(i).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr> --%>
                                                                
                                                                <%-- <tr>
                                                                    <td>
                                                                   <%= n8.item(i).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n19.item(i).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                    <td>
                                                                    <span class="bold theme-font"><%= n20.item(i).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr> --%>
                                                                
                                                                <%-- <tr>
                                                                    <td>
                                                                    <%= n9.item(i).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n20.item(i).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr> --%>
                                                                
                                                               <%--  <tr>
                                                                    <td>
                                                                    <%= n10.item(i).getFirstChild().getNodeValue() %>
                                                                    </td>
                                                                    
                                                                    <td>
                                                                        <span class="bold theme-font"><%= n21.item(i).getFirstChild().getNodeValue() %></span>
                                                                    </td>
                                                                </tr>    --%> 
                                                            
                                                            
                                                              
                                                                
                                                              
                                                            </table>
                                                              
                                                             
                                                             
                                                             
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
        <%}}%> <%} %>
        <div class="scroll-to-top">
            <i class="icon-arrow-up"></i>
        </div>
        <!-- END INNER FOOTER -->
        
    </body>

</html>