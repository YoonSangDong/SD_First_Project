<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import= "java.sql.*"%>
    <%!
    int count;
    int maxLength;
    
    public void init(){
    	count=0;
    	maxLength=8;
    	try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    }
    %>
    <%
    Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	try {
		conn=DriverManager.getConnection("jdbc:oracle:thin:@192.168.18.28:1521:orcl","kitri","kitri");
		String sql="select cnt from counter";
		stmt=conn.createStatement();
		//synchronized (sql) {		// 블록동기화
			rs=stmt.executeQuery(sql);
			rs.next();
			count=rs.getInt("cnt");
			sql="update counter set cnt=cnt+1";
			stmt.executeUpdate(sql);
		//}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally{
		try {
			if(rs!=null)
			rs.close();
			if(stmt!=null)
				stmt.close();
			if(conn!=null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String cnt=count+"";	//"168"
int countLength=cnt.length(); //3
int zeroLength=maxLength-cnt.length(); //5
for(int i=0;i<zeroLength;i++){
%>
	<img width=100 src="img/0.png">
<%
}
for(int i=0;i<cnt.length();i++){
%>
	<img width=100 src="img/<%= cnt.charAt(i)%>.png">
<%
}
%>
</body>
</html>