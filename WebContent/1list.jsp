<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="ss.courseBean" %>
      <%@page import="ss.courseDAO" %>
      <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트</title>
</head>
<body>
<%
courseDAO dao = new courseDAO();
Vector<courseBean> vec = dao.bringcourse();
%>
*총 10개의 교과목이 있습니다.

<table>


<tr>
<td>과목코드</td>
<td>과목명</td>
<td>학점</td>
<td>담당강사</td>
<td>요일</td>
<td>시작시간</td>
<td>종료시간</td>
<td>관리</td>
</tr>
<%
for(int i=0; i<vec.size(); i++){
	courseBean bean = vec.get(i);

%>
<tr>
<td><%=bean.getId() %></td>
<td><%=bean.getName() %></td>
<td><%=bean.getCredit() %></td>
<td>
<%
String teacher = request.getParameter("teacher");
if(bean.getLecturer().equals("1")){
	teacher="김교수";
}else if(bean.getLecturer().equals("2")){
	teacher="이교수";
}else if(bean.getLecturer().equals("3")){
	teacher="박교수";
}else if(bean.getLecturer().equals("4")){
	teacher="우교수";
}else if(bean.getLecturer().equals("5")){
	teacher="최교수";
}else if(bean.getLecturer().equals("6")){
	teacher="강교수";
}else if(bean.getLecturer().equals("7")){
	teacher="황교수";
}
%>
<a href="index.jsp?center=5teacherInfo.jsp?name=<%=teacher %>"><%=teacher %></a>
</td>
<td>
<%
String day = request.getParameter("day");
if(bean.getWeek()==1){
	day ="월요일";
}else if(bean.getWeek()==2){
	day="화요일";
}else if(bean.getWeek()==3){
	day="수요일";
}else if(bean.getWeek()==4){
	day="목요일";
}else if(bean.getWeek()==5){
	day="금요일";
}else if(bean.getWeek()==6){
	day="토요일";
}

%>

<%=day%></td>
<td><%=bean.getStart_hour() %></td>
<td><%=bean.getEnd_end() %></td>
<td><a href="index.jsp?center=3update.jsp?id=<%=bean.getId()%>">수정</a>/
<a href="4delete.jsp?id=<%=bean.getId() %>">삭제</a></td>
<%
}
%>
</tr>
<tr>
<td colspan="7" align="right">
<a href="index.jsp?center=2writer.jsp"><button type="button">작성</button></a></td></tr>
</table>

</body>
</html>