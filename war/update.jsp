<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="javascript/validate.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<form onsubmit="return validate()" method="post" action="/update">
		Enter Id : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" id="eid" name="eid"><br>
		Enter User name :&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" id="name" name="name"><br>
		Enter password : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="password" id="pass" name="pass"><br>
		<input type="submit" value="Update User">
		<p id="addError"></p>
		<p>${updateMessage}</p>
	</form>
</body>
</html>