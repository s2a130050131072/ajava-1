<%-- 
    Document   : removeTag
    Created on : Apr 5, 2016, 4:34:38 PM
    Author     : NEEL
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title> Tag Example</title>
</head>
<body>
     <h4>Enrollment No:130050131072</h4>
<c:set var="salary" scope="session" value="${2000*2}"/>
<p>Before Remove Value: <c:out value="${salary}"/></p>
<c:remove var="salary"/>
<p>After Remove Value: <c:out value="${salary}"/></p>
</body>
</html>
