<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name");
	String id=request.getParameter("id");
	String gender=request.getParameter("gender");
	String color=gender.equals("m") ? "cyan" : "pink";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<%= name %>(<font color=<%=color %>><%= id %></font>)님 안녕하세요.
</center>
</body>
</html>