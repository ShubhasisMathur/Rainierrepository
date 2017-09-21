<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.fetch.url.DataFromUrl"	import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	function getButns() {
		alert("start :: getButtons()");
<%!Map<String,String> fileNameNurl=new TreeMap<String,String>();
DataFromUrl dataFromUrl=new DataFromUrl();
%>
<%
System.out.println(" getButns()");
	fileNameNurl=dataFromUrl.getButtons("");
	%>
	alert("end of getButtons()");
	};
	
 <%-- function getURLgenXml(url) {
	alert("inside getURLgenXml ");
	alert("value :: "+url);
	
<%! String xmlFile,name;
/* DataFromUrl dataFromUrl1=new DataFromUrl(); */
%>

alert("NAME ::::: "+name);


<%!String k=null;%>
<%k=%>url;
<%
	k=
xmlFile=dataFromUrl.generateXML(k);%>  

 
window.location.replace("XmlToJsp.jsp?xmlfile="+<%=xmlFile%>); 
};    --%>


function getURL(value) {
	
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("result").innerHTML = xhttp.responseText;
	    }
	  };
	 
	  xhttp.open("GET","XmlToJsp.jsp?url="+value, true);
	 
	  xhttp.send();
	}
</script> 

</head> 
<body onload="getButns();">
<form>
<table>
<tr>
<td>
<%!String value; String button;%>
		<%
			for (Map.Entry<String, String> entry : fileNameNurl.entrySet()) {
				 button = entry.getKey();
				value = entry.getValue();
				
				System.out.println("button :: "+button+"  value :: "+value);
		%>

<%-- getURLgenXml('<%=value%>'); --%>
<button type="button" name="xmlfile" value="<%=value%>"  onclick="getURL('<%=value%>');"><%=button%></button>
<br/><br/>
<%} %>
</td><td><div id="result"><h2>Properties Will Display Here</h2></div>
</td>
</tr>

</table>
</form>
</body>
</html>