<%-- 
    Document   : paramTag
    Created on : Apr 5, 2016, 4:22:11 PM
    Author     : NEEL
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head><title>Tag Example</title></head>
    <body>
        <h4>Enrollment No:130050131072</h4>
        <c:url value="outTag.jsp" var="myURL">
           <c:param name="id" value="neel"/>
           <c:param name="password" value="1234"/>
        </c:url>
        <c:import url="${myURL}"/>
    </body>
</html>