<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.fetch.url.DataFromUrl"%>
 <%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.logging.Logger" %>
<%@page import="com.fetch.ConfigProps" %>
<%@page import="java.io.File" %>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*,java.util.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <script>
	 function getButns() {

<%!Map<String,String> fileNameNurl=new TreeMap<String,String>();
DataFromUrl dataFromUrl=new DataFromUrl();
%>
<%
System.out.println(" getButns()");
	String port=request.getParameter("port");
	fileNameNurl=dataFromUrl.getButtons(port);
	%>
	
	};
	 
 function getURL(value,buttonName) {
	
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("result").appendChild(xhttp.responseText)
	     
	    }
	  };
	 
	  xhttp.open("GET","XmlToJsp.jsp?url="+value+"&buttonName="+buttonName, true);
	  
	  xhttp.send();
	} 
</script> 
</head>

 <body onload="getButns();">
<%!String value; String button;%>
		<%
			for (Map.Entry<String, String> entry : fileNameNurl.entrySet()) {
				 button = entry.getKey();
				value = entry.getValue();
				
				System.out.println("button :: "+button+"  value :: "+value);	
		%>

<%!String tsthostname=null;
String url=null;
%>
<% tsthostname=request.getParameter("tsthostname");
url="http://"+tsthostname+":"+value;
System.out.println("dyn-admin ==== url :: "+url);
%>
	<%!String clr=null;%>
	<%clr=request.getParameter("clr");
	System.out.println("COLOR ======>>>>   "+clr);
	
	%>
	<!--  properties table  -->
	
	<%
 DataFromUrl dataFromUrl=new DataFromUrl();
//String url= (String)request.getParameter("url");
String xmlFileName=dataFromUrl.generateXML(url);

ConfigProps configProps=dataFromUrl.getPropValues();
String xmlDestination=configProps.getXmlTarget();

DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
DocumentBuilder db = dbf.newDocumentBuilder();
Document doc = db.parse(new File(xmlDestination+"/"+xmlFileName+".xml"));

NodeList nl= doc.getElementsByTagName("property");
NodeList n2= doc.getElementsByTagName("name");
NodeList n3= doc.getElementsByTagName("value");

Element docEle = doc.getDocumentElement();
NodeList list = docEle.getChildNodes();

String btsName=button;
/* Document propsDoc = db.parse(new File("D:/EM/dyn-admin7020.xml"));
System.out.println("btsName :: "+btsName);
NodeList porps=propsDoc.getElementsByTagName(btsName);
int countOfNodes=propsDoc.getElementsByTagName(btsName).getLength();
System.out.println("porps list :: "+porps.getLength());
NodeList childnodes = porps.item(0).getChildNodes();
System.out.println(" Childs length : " + childnodes.getLength());
Set<String> childPropsSet=new HashSet<String>();  

for (int i = 0; i < childnodes.getLength(); i++) {
	  Node node = childnodes.item(i);
	  
	  if (node instanceof Element) {
	    Element childElement = (Element) node;
	    childPropsSet.add(childElement.getTagName());
	    System.out.println("tag name: " + childElement.getTagName());
	  }
	}

*/

// Document propsDoc = db.parse(new File("D:/Users/pushkar_s/Desktop/dyn-admin-config (3).xml"));
Document propsDoc = db.parse(new File("/tmp/HC/config/dyn-admin-config.xml"));
System.out.println("btsName :: "+btsName);
NodeList env=propsDoc.getElementsByTagName(btsName);

int countOfNodes=propsDoc.getElementsByTagName(btsName).getLength();
System.out.println("porps list :: "+env.getLength());
NodeList buttons = env.item(0).getChildNodes();
System.out.println(" Childs length ****: " + buttons.getLength());
Set<String> childPropsSet=new HashSet<String>(); 

 for (int i = 0; i < buttons.getLength(); i++) {
	  Node node = buttons.item(i);
	
	  if (node instanceof Element) {
	    //Element childElement = (Element) node;
	     NodeList props=node.getChildNodes();
	//    System.out.println("child nodes ===>> "+(node.getChildNodes()).getLength());
	    for(int j=0;j<props.getLength();j++)
	    {
	    	 Node propnode = props.item(j);
	    	if (propnode instanceof Element) {
	    	//	 System.out.println("child nodes prop ===>> "+propnode);
	    		 NodeList propNameValue=propnode.getChildNodes();
	    		// for(int k=0;k<propNameValue.getLength();k++)
	    		 //{
	    			 /* if (propNameValue instanceof Element) {
	    			 System.out.println(propNameValue);
	    			 } */
	    			 String propName=propNameValue.item(0).getTextContent();
	    			 String propValue=propNameValue.item(1).getTextContent();
	    			 System.out.println("prop name :: "+propName);
	    			 System.out.println("prop value :: "+propValue);
	    			 
	    			 if(propValue.equalsIgnoreCase("show"))
	    			 {
	    				 childPropsSet.add(propName);
	    			 }
	    			 
	    				 
	    			 
	    		 
	    	}
	    	
	    }
	   /*  NodeList porperties=node.getChildNodes().item(i).getChildNodes();
	    childPropsSet.add(childElement.getTagName());
	    System.out.println("tag name: " + childElement.getTagName()); */
	  }
	} 
System.out.println(childPropsSet);
%>
	
<h6><%=btsName%></h6>
	<table id='<%=btsName%>' border="1">
 <%-- <tr><th><%=btsName%></th></tr> --%>
<tr><td><b>Property Name</b></td><td><b>Value</b></td></tr>

<%
Iterator<String> iterator = null;//childPropsSet.iterator(); 
for(int i=0;i<list.getLength();i++){

	iterator = childPropsSet.iterator(); 

// check values
while (iterator.hasNext()){
String next=iterator.next();
if((n2.item(i).getFirstChild().getNodeValue()).equals(next)){ %>  
<tr><td class="propname"><%= n2.item(i).getFirstChild().getNodeValue() %>  </td><td class="propvalue"><%= n3.item(i).getFirstChild().getNodeValue() %> </td></tr>
<%}

} %>


		

<%}%>
</table><br/><br/>
			<%} %>


</body>
</html>