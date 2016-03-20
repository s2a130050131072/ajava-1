<%-- 
    Document   : SessionTrackingWithJSP
    Created on : Mar 20, 2016, 6:29:29 PM
    Author     : NEEL
--%>

<%@ page import="java.io.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>   
<html>
<head>
<title>Session Tracking</title>
</head>
<body>
<h1>Session Tracking</h1>
<h3>Enrollment No:130050131072</h3>
<% request.getSession();
   String name=request.getParameter("t1"); 
    out.println("<h4>Hello"+"\t"+name+"!!</h4>");%>
</body>
</html>
