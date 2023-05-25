<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product Form</title>
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
	
		<pre>
			<strong>The following information is received:</strong>
			Product no is ${param.prodno}
			Product name is ${param.prodname}
			Product type is ${param.prodtype}
			Manufacturer is ${param.manufacturer}
			Price is <fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${param.price}"/>
			Weight is ${param.weight}
		</pre>
</body>
</html>