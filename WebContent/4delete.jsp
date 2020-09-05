<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                 <%@page import="ss.courseBean" %>
      <%@page import="ss.courseDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
courseDAO dao = new courseDAO();
dao.deleteWithPs(id);
response.sendRedirect("index.jsp");
%>
</body>
</html>