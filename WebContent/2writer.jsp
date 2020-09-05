<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="ss.courseBean" %>
      <%@page import="ss.courseDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교과목추가</title>
</head>
<script>

</script>
<body>

<h1>교과목추가</h1>
<form method="post" action="2writeAction.jsp">
<table border="1">
<tr>
<td>교과목 코드</td><td><input type="text" name="id"></td></tr>
<tr><td>과목명</td><td><input type="text" name="name" placeholder="이름"></td></tr>
<tr>
<td>담당강사</td><td>
<select name="lecturer">ㅇㅇㅇ<%--옵션닫아주기 --%>
<option value="" disabled selected>담당강사선택</option>
<option value="1">김교수</option>
<option value="2">이교수</option>
<option value="3">박교수</option>
<option value="4">우교수</option>
<option value="5">최교수</option>
<option value="6">강교수</option>
<option value="7">황교수</option>

</select>
</td></tr>
<tr>
<td>학점</td><td><input type="text" name="credit"></td></tr>
<%--value값을 week는 int니까 1,2,3,4,, --%>
<tr><td>요일</td><td><input type="radio" name="week" value="1">월
<input type="radio" name="week" value="2">화
<input type="radio" name="week" value="3">수
<input type="radio" name="week" value="4">목
<input type="radio" name="week" value="5">금
<input type="radio" name="week" value="6">토


<tr><td>시작</td><td><input type="text" name="start_hour"></td></tr>

<tr><td>종료</td><td><input type="text" name="end_end"></td></tr>
<tr>
<td colspan="2">
<a href="index.jsp"><button>목록</button></a>
<input type="submit" value="완료">
</td>


</table>


</form>
</body>
</html>