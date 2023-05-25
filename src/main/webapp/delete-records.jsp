<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete A Record</title>
</head>
<body>
		<form method="post">
		
		<pre>
			Enter Product No:   <input type="text" name="prodno">
			              		
			              	    <button type="submit">Delete the Product</button>
		</pre>
		</form>
		<c:set var="prodno" value="${param.prodno}" />
		<sql:setDataSource 
			var="mydb" 
			driver="com.mysql.cj.jdbc.Driver" 
			url="jdbc:mysql://localhost:3306/A3" 
			user="root" 
			password="navarr0Jds1.." />
	
		<sql:update dataSource="${mydb}">
	  		delete from product where prodno = ?
	  	<sql:param value="${prodno}" />
		</sql:update>
		
		<sql:query dataSource="${mydb}" var="rs">
			select * from product;
		</sql:query>
		
	<div align="center">
	<table border="1">
		 <tr>
	      <th>Product No</th>
	      <th>Product Name</th>
	      <th>Product Type</th>
	      <th>Manufacturer</th>
	      <th>Price</th>
	      <th>Weight</th>
	    </tr>    
	<c:forEach var="row" items="${rs.rows}">
		<tr>
		   <td>${row.prodno}</td>
		   <td>${row.prodname}</td>
		   <td>${row.prodtype}</td>
		   <td>${row.manufacturer}</td>
		   <td>${row.price}</td>
		   <td>${row.weight}</td>
		</tr>
	</c:forEach>
	</table>	
	</div>
 </body>
</html>