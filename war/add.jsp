<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="javascript/validate.js"></script>
<style>
</style>
</head>
<body>
	<form action="/add" method="post" onsubmit="return validate()">
		Enter Id : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="eid" id="eid"><br>
		Enter User name :&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="name" id="name"><br>
		Enter password : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="password" name="pass" id="pass"><br>
		<input type="submit" value="Add User">
		<p id="addError"></p>
		<p>${errorMessage}</p>
	</form>
</body>
</html>