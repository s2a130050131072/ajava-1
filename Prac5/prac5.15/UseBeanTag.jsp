<head>
<title>Using JavaBeans in JSP</title>
</head>
<body>
<h3>Enrollment No:130050131072</h3>
<h2>Using JavaBeans in JSP</h2> 
<jsp:useBean id="test" class="com.examples.jsp.UseBeanTag" /> 
<jsp:setProperty name="test" property="message" value="Hello JSP..." />
<p>Message has received.</p>
<jsp:getProperty name="test" property="message" />
</body>
</html>
