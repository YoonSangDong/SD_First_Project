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
<%= name %>��(<%=id %>)�� �����ϴ� ������ 
<%
	if(fruit!=null)
	for(int i=0;i<fruit.length;i++){
%>
<% 		if(i==fruit.length-1){
%>
	<%= fruit[i]+"�Դϴ�." %>
	<% }else{ %>
	<%=fruit[i]+"," %>
	<% } %>
<%
	}
	else{
%>
	�����ϴ�.
<%
	}
%>
</h1>
</center>
</body>
</html>