<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
  <head>
    <title>JSTL  Tag</title>
  </head>
<body>
       <h4>Enrollment No:130050131072</h4>
<h4>timeZone Tag</h4>
 Date in the GMT-5.30 time zone:  
    <c:set var="today" value="<%=new java.util.Date()%>" />  
    <c:set var="timeZone" value="GMT -5.30"/>  <fmt:timeZone value="${timeZone}">  
    <strong>  
          <fmt:formatDate value="${today}" timeZone="${timeZone}" type="both" />  
        </strong>  
    </fmt:timeZone>    
</body>
</html>
