<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.fetch.url.DataFromUrl,com.fetch.link.SearchLinksExtractor,javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*,java.util.*,java.io.File;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<script type="text/javascript"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js" >
<script>
function searchProperties(propUrl){
	 //alert("before going to Dyn-AdminContent ");
	//alert("===>>> >> searchProperties");
	document.getElementById("result").innerHTML = '';
	var fullUrl='http://' + tst + ':' + port+propUrl;
	//alert("Full URL ==> "+fullUrl);
	var xhttp = new XMLHttpRequest();
	//alert("before Auth");
	 var creds = "admin" + ':' + "admin123";
    var basicScheme = btoa(creds);
    var hashStr = "Basic "+basicScheme;
    xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    /* 	 $('<iframe id="dynSearchResultFrame"  height=650px width=1350px onclick="innerframe();"></iframe>' ).appendTo('result').contents().find('body').html('<p>'+xhttp.responseText+'</p>'); */
	    }
    };
	/* xhttp.open("GET","search.jsp?searchString="+searchString+"&searchUrl="+searchUrl, true);  */
	//alert("b - open");
	 xhttp.open("GET","Dyn-AdminContent.jsp?searchString="+searchString+"&port="+port+"&tst="+tst, true);
	 //alert("a- open");
	xhttp.send();

}
</script>


</head>
<body id='body'onload="getProperty();">
<div id='tags'>
<%!
	String searchUrl=null,searchString=null,text=null,href=null,tst=null,port=null;
	
	%>
	<%
	searchString= request.getParameter("searchString");
	searchUrl = request.getParameter("searchUrl");
	tst=request.getParameter("tst");
	port=request.getParameter("port");
	SearchLinksExtractor searchlinksExtr=new SearchLinksExtractor();
	//Vector<HtmlLink> htmlLinks=searchlinksExtr.grabHTMLLinks(searchString, searchUrl);
	Map<String,String> textHref=searchlinksExtr.grabHTMLLinks(searchString, searchUrl);
	System.out.println(textHref);

	System.out.println();
	%>

	<%for (Map.Entry<String, String> entry : textHref.entrySet()) {
	    text = entry.getKey();
	    href = entry.getValue();
	    System.out.println("text ::  "+text+"  href :: "+href);
	%>
	<button type="button" class="btn default btn-sm" 	onclick="searchProperties('/dyn/admin/nucleus/'+'<%=text%>');">
										<%=text%></button>
	
	<%
	}
	
	%>

</div> 

</body>
</html>