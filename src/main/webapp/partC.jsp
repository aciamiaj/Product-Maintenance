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
<title>Part C</title>
</head>
<body>
		<p> step 1: </p>
		<%!int p=500; %>
		<%=p %>
		<p> step 2: </p>
		<c:set var="q" value="600" />
		<c:out value="${q}"/>
		<c:out value="${p}"/>
		<p> step 3: </p>
		<p>${p} ${q}</p>
 </body>
</html>