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
<%-- 내일은 그냥 request.getPara으로 해보기 useBean대신
useBean에러는 여기서 틀려서 날 수도있지만 입력값잘못입력해도 오류남--%>
<jsp:useBean id="bean" class="ss.courseBean">
<jsp:setProperty name="bean" property="*"/>
</jsp:useBean>
<%--<%
String id = request.getParameter("id");
String name = request.getParameter("id");
int credit = Integer.parseInt(request.getParameter("credit"));
String lecturer = request.getParameter("lecturer");
int week = Integer.parseInt(request.getParameter("week"));
int start_hour = Integer.parseInt(request.getParameter("start_hour"));
int end_end = Integer.parseInt(request.getParameter("end_end"));
--%>
 <%
courseDAO dao = new courseDAO();
dao.inputcourse(bean);
response.sendRedirect("index.jsp");
%>
</body>
</html>