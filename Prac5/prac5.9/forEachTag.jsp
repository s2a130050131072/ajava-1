<%-- 
    Document   : forEachTag
    Created on : Apr 5, 2016, 3:57:52 PM
    Author     : NEEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Tag Example</title>
</head>
<body>
     <h4>Enrollment No:130050131531</h4>
<c:forEach var="i" begin="1" end="5">
   Item <c:out value="${i}"/><p>
</c:forEach>
</body>
</html>