<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,java.sql.*,javax.servlet.*,javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="id" value="${param.id}"/>
        <c:set var="firstname" value="${param.firstname}"/>
        <c:set var="lastname" value="${param.lastname}"/>
        <c:set var="dob" value="${param.dob}"/> 
        <sql:setDataSource var="con" driver="org.postgresql.Driver" 
                url="jdbc:postgresql://localhost:5433/s2a130050131072" 
                user="postgres" password="postgres"/>
        <sql:update dataSource="${con}" var="count">
            insert into student_dob(id,first,last,dob) values(?,?,?,?); 
        <sql:param value="${id}"/>
        <sql:param value="${firstname}"/>
        <sql:param value="${lastname}"/>
        <sql:param value="${dob}"/>
       </sql:update>
            
        <sql:query dataSource="${con}" var="rs">select * from student_dob;</sql:query>
        <h1>Enrollment No:130050131072</h1>
        <h1>Student Details</h1>
          <table border="2">
            <tr>
                <th>Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Date Of Birth</th>    
            </tr>
          <c:forEach var="row" items="${rs.rows}">
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