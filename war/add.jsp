<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="javascript/validate.js"></script>
<script src="javascript/jquery-3.1.0.js"></script>
<style>
</style>
</head>
<body onload="refresh()">
	<form action="/add" method="post" onsubmit="return validate()">
		<label>Enter Id :</label> 
		<input type="text" name="eid" id="eid" onkeypress="return checkId();" align="right"><br>
		<label>Enter User name :</label>
		<input type="text" name="name" id="name" align="right"><br>
		<label>Enter password :</label> 
		<input type="password" name="pass" id="pass" align="right"><br>
		<input type="submit" value="Add User">
		<span id="addError"></span>
		<span id="servletMessage">${errorMessage}</span>
	</form>
</body>
</html>