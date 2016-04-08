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
        <c:set var="name" value="${param.bookname}"/>
        <c:set var="author" value="${param.authorname}"/>
        <sql:setDataSource var="con" driver="org.postgresql.Driver" 
                url="jdbc:postgresql://localhost:5433/s2a130050131072" 
                user="postgres" password="postgres"/>
        <sql:update dataSource="${con}" var="count">
            insert into book_sql(id,bookname,authorname) values(?,?,?); 
        <sql:param value="${id}"/>
        <sql:param value="${name}"/>
        <sql:param value="${author}"/>
       </sql:update>
       
       <sql:query dataSource="${con}" var="rs">select * from book_sql;</sql:query>
        <h1>Enrollment No:130050131072</h1>
        <h1 align="center">Book Details</h1>
          <table align="center" border="1">
            <tr>
                <th>Id</th>
                <th>Book Name</th>
                <th>Author</th>    
            </tr>
          <c:forEach var="row" items="${rs.rows}">
              <tr>
                  <td><c:out value="${row.id}"/></td>
                  <td><c:out value="${row.bookname}"/></td>
                  <td><c:out value="${row.authorname}"/></td>
              </tr>
          </c:forEach>   
              </table>
    </body>
</html>
