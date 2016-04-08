    <%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>Info</title>
</head>
<body>
   
<sql:setDataSource var="con" driver="org.postgresql.Driver" 
                url="jdbc:postgresql://localhost:5433/s2a130050131072" 
                user="postgres" password="postgres"/>
 <%
Date d1 = new Date("1984/05/14");
String id = "3"; %>

 <sql:update dataSource="${con}" var="count">
   update student_dob set dob = ? where id = ?;
   <sql:dateParam value="<%=d1%>" type="DATE" />
   <sql:param value="<%=id%>" />
</sql:update>
 
<sql:query dataSource="${con}" var="result">
   SELECT * from student_dob;
</sql:query>
   <h2>Enrollment No:130050131072</h2>
   <h3>Student Updated Details</h3>
<table border="1">
<tr>
   <th>ID</th>
   <th>First Name</th>
   <th>Last Name</th>
   <th>Date Of Birth</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.first}"/></td>
   <td><c:out value="${row.last}"/></td>
   <td><c:out value="${row.dob}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>