<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
 
<html>
<head>
  <title>JSTL x:transform Tags</title>
</head>
<body>
    <h3>Enrollment No:130050131072</h3>
<h3>Books Info:</h3>
<c:set var="xmltext">
    <books>
<book>
	<id>1</id>
	<name>Java I/O</name>
	<author>Tim Ritchey</author>
</book>
<book>
	<id>2</id>
	<name>Java in a NutShell</name>
	<author>David Flanagan</author>
</book>
<book>
	<id>3</id>
	<name>The Java AWT Reference</name>
	<author>John Zukowski</author>
</book>
</books>
</c:set>
<x:parse xml="${xmltext}" var="parsed"/>
 <table border="2">
  <tr>
	<th>Id</th>
	<th>Book Name</th>
	<th>Author Name</th>
  </tr>
  <x:forEach select="$parsed/books/book" var="a">
	   	<tr>
	   		<td><x:out select="$a/id" /></td>
			<td><x:out select="$a/name" /></td>
			<td><x:out select="$a/author" /></td>
		</tr>
  </x:forEach>
 </table>  

<h2>Books with Id <= 2 are highlighted</h2>
<x:parse var="value" xml="${xmltext}" />
   <table border="2">
	<x:forEach var="i" select="$value/books/book">           
	     <tr>
		<x:choose>                       
		       <x:when select="id<=2">
                            <td><b><u><x:out select="name" /></u></b></td>
                            <td><b><u><x:out select="author" /></u></b></td>
                    </x:when>           
		      <x:otherwise>           
                            <td><x:out select="name" /></td>
		             <td><x:out select="author" /></td>                   
		      </x:otherwise>
		</x:choose>   
	     </tr>       
        </x:forEach>
 </table>
</body>
</html>