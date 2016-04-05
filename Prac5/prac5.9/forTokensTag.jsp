<%-- 
    Document   : forTokensTag
    Created on : Apr 5, 2016, 4:02:36 PM
    Author     : NEEL
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Tag Example</title>
</head>
<body>
    <h4>Enrollment No:130050131072</h4>
<c:forTokens items="Tim,Mark,Steve" delims="," var="name">
   <c:out value="${name}"/><p>
</c:forTokens>
</body>
</html>