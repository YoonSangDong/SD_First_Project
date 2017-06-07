<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	int cnt=0;
	int zcnt=0;
	int maxz=8;
	String str="";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<%
cnt++;
str=cnt+"";
	for(int i=maxz-str.length();i>0;i--)
	{
%>
		<img src="img/0.png" width="100">
		<% 
	}for(int i=0;i<str.length();i++){
%>
	<img src="img/<%= str.charAt(i)+".png"%>"width="100">
<% 
	}
%>
</center>
</body>
</html>