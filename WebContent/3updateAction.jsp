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
request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="bean" class="ss.courseBean">
<jsp:setProperty name="bean" property="*"/>
</jsp:useBean>

<%
courseDAO dao = new courseDAO();
dao.processUpdate(bean);
response.sendRedirect("index.jsp");
%>
</body>
</html>