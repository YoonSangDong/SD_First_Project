<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    	//request.setCharacterEncoding("utf-8");
    	String name=request.getParameter("name");
    	String id=request.getParameter("id");
    	String []fruit=request.getParameterValues("fruit");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>
<%= name %>님(<%=id %>)이 좋아하는 과일은 
<%
	if(fruit!=null)
	for(int i=0;i<fruit.length;i++){
%>
<% 		if(i==fruit.length-1){
%>
	<%= fruit[i]+"입니다." %>
	<% }else{ %>
	<%=fruit[i]+"," %>
	<% } %>
<%
	}
	else{
%>
	없습니다.
<%
	}
%>
</h1>
</center>
</body>
</html>