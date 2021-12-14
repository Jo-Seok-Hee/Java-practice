<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Date now = new Date();
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat timeFormat = new SimpleDateFormat("hh시 mm분 ss초");
	
		String dateString = dateFormat.format(now);
		String timeString = timeFormat.format(now);
		
		String display = request.getParameter("display");
	%>
	
	<%if(display.equals("date")){ %> 
	<h1> 현재 날짜 <%=dateString %> </h1> <% } else { %>
	<h1> 현재 시간 <%=timeString %> </h1> <%} %>
</body>
</html>