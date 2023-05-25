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
<title>Insert Record Form</title>
</head>
<body>
		<form method="post">
		<pre>
			Product No:   <input type="text" name="prodno">
			Product Name: <input type="text" name="prodname">
			Product Type
			<label><input type="radio" name="prodtype" value="Home Appliance" >Home Appliance</label><label><input type="radio" name="prodtype" value="Computer Hardware">Computer Hardware</label><label><input type="radio" name="prodtype" value="Game Console" >Game Console</label><label><input type="radio" name="prodtype" value="Clothing">Clothing</label>
			Manufacturer: <select name="manufacturer">
			<option value="LG">LG</option>
			<option value="Samsung">Samsung</option>
			<option value="Sony">Sony</option>
			<option value="Toshiba">Toshiba</option>
			</select>    
			Price:        <input type="number" name="price">
			Weight:       <input type="text" name="weight">  <br/>
			              <button type="submit">Add Product</button>
		</pre>
		</form>
		<c:set var="newRowAdded" value="false" />
		<sql:setDataSource 
			var="mydb" 
			driver="com.mysql.cj.jdbc.Driver" 
			url="jdbc:mysql://localhost:3306/A3" 
			user="root" 
			password="navarr0Jds1.." />
			
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
		    <sql:query dataSource="${mydb}" var="rs"> SELECT * FROM product </sql:query>
		    <c:forEach var="row" items="${rs.rows}" varStatus="status">
		      <tr>
		        <td>
		          <c:out value="${row['prodno']}" />
		        </td>
		        <td>
		          <c:out value="${row['prodname']}" />
		        </td>
		        <td>
		          <c:out value="${row['prodtype']}" />
		        </td>
		        <td>
		          <c:out value="${row['manufacturer']}" />
		        </td>
		        <td>
		          <c:out value="${row['price']}" />
		        </td>
		        <td>
		          <c:out value="${row['weight']}" />
		        </td>
		      </tr>
		      <c:if test="${status.last && newRowAdded}">
		        <tr>
		          <td>
		            <c:out value="${param.prodno}" />
		          </td>
		          <td>
		            <c:out value="${param.prodname}" />
		          </td>
		          <td>
		            <c:out value="${param.prodtype}" />
		          </td>
		          <td>
		            <c:out value="${param.manufacturer}" />
		          </td>
		          <td>
		            <c:out value="${param.price}" />
		          </td>
		          <td>
		            <c:out value="${param.weight}" />
		          </td>
		        </tr>
		      </c:if>
		    </c:forEach>
		    <c:if test="${not empty param.prodno}">
		      <c:choose>
		        <c:when test="${param.price lt 100 or param.price gt 900}">
		          <p>Price must be between $100 and $900.</p>
		        </c:when>
		        <c:otherwise>
		          <sql:update dataSource="${mydb}"> INSERT INTO product VALUES (?, ?, ?, ?, ?, ?)
		            <sql:param value="${param.prodno}" />
		            <sql:param value="${param.prodname}" />
		            <sql:param value="${param.prodtype}" />
		            <sql:param value="${param.manufacturer}" />
		            <sql:param value="${param.price}" />
		            <sql:param value="${param.weight}" />
		          </sql:update>
		          <c:set var="newRowAdded" value="true" />
		          <!-- Retrieve all products from the database -->
		          <sql:query dataSource="${mydb}" var="rs"> SELECT * FROM product </sql:query>
		          <!-- Add the new row to the table -->
		          <c:set var="lastRow" value="${fn:length(rs.rows) - 1}" />
		          <tr>
		            <td>
		              <c:out value="${rs.rows[lastRow].prodno}" />
		            </td>
		            <td>
		              <c:out value="${rs.rows[lastRow].prodname}" />
		            </td>
		            <td>
		              <c:out value="${rs.rows[lastRow].prodtype}" />
		            </td>
		            <td>
		              <c:out value="${rs.rows[lastRow].manufacturer}" />
		            </td>
		            <td>
		              <c:out value="${rs.rows[lastRow].price}" />
		            </td>
		            <td>
		              <c:out value="${rs.rows[lastRow].weight}" />
		            </td>
		          </tr>
		        </c:otherwise>
		      </c:choose>
		    </c:if>
		  </table>
		 </div>
 </body>
</html>