<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!
		int res;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
<center>
<hr>
<h3>구구단 out.print 사용 </h3>
<table bgcolor="white" border="3">
<%
for(int i=2;i<10;i++){
%>
	<tr>
	<% 
	for(int j=1;j<10;j++){
	%>
	 <td>
		<% out.print(i+"x"+j+"="+i*j);
		%></td>
		<%
	} 
	 %>
	</tr>
<%
}
%>
</table>
<hr>
<h3>구구단 출력부 사용</h3>
<hr>
<table bgcolor="white" border="3">
<%
	for(int i=2;i<10;i++){
%>
	<tr>
<%
		for(int j=1;j<10;j++){	
%>
		<td><%= i+"x"+j+"=" %></td><td><%= i*j%></td>
<% 
		}
%>
		</tr>
<%
	}
%>
</table>
</center>
</body>
</html>