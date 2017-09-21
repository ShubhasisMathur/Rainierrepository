<%@page import="sun.net.www.protocol.http.HttpURLConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.fetch.url.DataFromUrl,com.fetch.url.DataUrl,javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*,java.util.*,java.io.File, java.io.IOException,java.io.InputStream,java.net.Authenticator,java.net.MalformedURLException,java.net.PasswordAuthentication,
 java.net.URL, java.net.URLConnection,java.io.*,com.fetch.link.SearchLinksExtractor;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<script>

function getDynAdminResult(){
	//alert("getDynAdminResult()");
	<%!SearchLinksExtractor dataFrmSearchLink=null;%>
	<%dataFrmSearchLink=new SearchLinksExtractor();
	 String searchLink=(String)request.getParameter("searchLink");
	 //String tst=(String)request.getParameter("tst");
	// String port=(String)request.getParameter("port");
	// String url="http://" + tst + ":" + port+ "/dyn/admin/atg/dynamo/admin/en/cmpn-search.jhtml?query="+ searchString + "&showAll=false";
	// System.out.println("searchLink  ===>>> "+searchLink);
	 %>
//	 alert("midle getDynAdminResult()");
 document.getElementById("searchResult").innerHTML= <%=dataFrmSearchLink.getDynAdmin(searchLink)%>;
};
</script>

</head>
<body onload="getDynAdminResult()">


	<div id="searchResult">
	</div>

</body>

</html>