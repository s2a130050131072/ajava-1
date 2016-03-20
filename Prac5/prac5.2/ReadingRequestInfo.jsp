<%-- 
    Document   : ReadingRequestInfo
    Created on : Mar 20, 2016, 2:54:31 PM
    Author     : NEEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reading Request Info</title>
    </head>
    <body>
        <h1>Enrollment No:130050131072</h1>
        <b>Method:<%= request.getMethod() %></b></br>
        <b>Request URI:<%= request.getRequestURI() %></b><br/>
        <b>Protocol:<%= request.getProtocol() %></b><br/>
        <b>Path Info:<%= request.getPathInfo() %></b><br/>
        <b>Path Translation:<%= request.getPathTranslated() %></b><br/>
        <b>Query String:<%= request.getQueryString() %></b><br/>
        <b>Content Length:<%= request.getContentLength() %></b><br/>
        <b>Content Type:<%= request.getContentType() %></b><br/>
        <b>Server Name:<%= request.getServerName() %></b><br/>
        <b>Server Port:<%= request.getServerPort() %></b><br/>
        <b>Remote User:<%= request.getRemoteUser() %></b><br/>
        <b>Remote Address:<%= request.getRemoteAddr() %></b><br/>
        <b>Remote Host:<%= request.getRemoteHost() %></b><br/>
        <b>Authentication Type:<%= request.getAuthType() %></b><br/>
    </body>
</html>
