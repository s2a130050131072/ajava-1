<html>  
<body>  
<h3>130050131072</h3>
<%   
  
String name=(String)pageContext.getAttribute("user",PageContext.SESSION_SCOPE);  
out.print("Hello "+name);  
  
%>  
</body>  
</html>  