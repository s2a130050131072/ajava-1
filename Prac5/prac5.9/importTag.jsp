<%-- 
    Document   : importTag
    Created on : Apr 5, 2016, 4:09:56 PM
    Author     : NEEL
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Tag Example</title>
</head>
<body>
    <h4>Enrollment No:130050131072</h4>
<c:import var="data" url="forTokensTag.jsp"/>
<c:out value="${data}"/>
</body>
</html>
