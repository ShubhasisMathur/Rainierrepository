<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.fetch.url.DataFromUrl"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.logging.Logger" %>
<%@page import="com.fetch.ConfigProps" %>
<%@page import="java.io.File" %>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*,java.util.*;"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Properties</title>
</head>
<body> <!-- onload="xmlToJsp(xmlFileName)" -->
<% Logger logger=Logger.getLogger(this.getClass().getName());%>
<%
DataFromUrl dataFromUrl=new DataFromUrl();
String url= (String)request.getParameter("url");
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

String btsName=request.getParameter("buttonName");
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

 Document propsDoc = db.parse(new File("/tmp/HC/config/dyn-admin-config.xml")); 
//Document propsDoc = db.parse(new File("D:/Users/pushkar_s/Desktop/dyn-admin-config-temp.xml"));
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
	    System.out.println("child nodes ===>> "+(node.getChildNodes()).getLength());
	    for(int j=0;j<props.getLength();j++)
	    {
	    	 Node propnode = props.item(j);
	    	if (propnode instanceof Element) {
	    		 System.out.println("child nodes prop ===>> "+propnode);
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
	    			 
	    				 
	    			 
	    		// }
	    		 
	    	}
	    	
	    }
	   /*  NodeList porperties=node.getChildNodes().item(i).getChildNodes();
	    childPropsSet.add(childElement.getTagName());
	    System.out.println("tag name: " + childElement.getTagName()); */
	  }
	} 
System.out.println(childPropsSet);
%>
<!-- <a href='http://localhost:9090/RequirmentB1/Index.jsp'>Back</a> -->
<div id="tables">
<table border="1">
<tr><%=btsName%> </tr>
<tr><th>Property Name</th><th>Value</th></tr>
<%int i=0; 
System.out.println("######### n2.item(i).getFirstChild().getNodeValue() ===>>> "+n2.item(i).getFirstChild().getNodeValue());
%>
<c:forEach begin="1" end="<%=list.getLength() %>">
<%
Iterator<String> iterator = childPropsSet.iterator(); 

// check values
while (iterator.hasNext()){
String next=iterator.next();
System.out.println(" n2.item(i).getFirstChild().getNodeValue() ===>>> "+n2.item(i).getFirstChild().getNodeValue());
System.out.println("  iterator.next() ===>>> "+next);
if((n2.item(i).getFirstChild().getNodeValue()).equals(next)){
	System.out.println(" n2.item(i).getFirstChild().getNodeValue() ===>>> "+n2.item(i).getFirstChild().getNodeValue());
	System.out.println("  iterator.next() ===>>> "+next);
	%>  
<tr>
<td class="propname"><%= n2.item(i).getFirstChild().getNodeValue() %>  </td>
<td class="propvalue"><%= n3.item(i).getFirstChild().getNodeValue() %> </td>
</tr>
<%}
else{
	System.out.println("Not matched nodes ..... . . . . . ");
}} %>
<%i++; %>
</c:forEach>
</table>
<%logger.info("Property table is generated"); %>
</div>
</body>
</html>