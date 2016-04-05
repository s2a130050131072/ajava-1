<%-- 
    Document   : ifTag
    Created on : Apr 5, 2016, 4:07:13 PM
    Author     : NEEL
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title> Tag Example</title>
</head>
<body>
    <h4>Enrollment No:130050131072</h4>
<c:set var="salary" scope="session" value="${20000*2}"/>
<c:if test="${salary > 2000}">
   <p>My salary is: <c:out value="${salary}"/><p>
</c:if>
</body>
</html>