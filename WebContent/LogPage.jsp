<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page
	import="com.server.log.ServerLog"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%String tsthostname=request.getParameter("tsthostname");
String lineNo=request.getParameter("lineNo");
String instance=request.getParameter("logpath");
System.out.println("tsthostname  "+tsthostname);
System.out.println("instance  "+instance);
System.out.println("linNo  "+lineNo);
ServerLog servLog=new ServerLog();
servLog.runScript(tsthostname,instance,lineNo);
String filecontent=servLog.logOutput();
%>
<div>
<%=filecontent%>
</div>
</body>
</html>