<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	table {
    		position : absolute;
    		top : 10%;
    		left:50%;
    		transform : translate(-50%);
    	}
    table,td{
    	border : 1px solid black;
    	border-collapse: collapse;
    	padding:10px;
    }
    #trId {
    	background-color: rgba(0,0,0,0.1);
    	font-weight : bold;
    	text-align : center;
    }
</style>
<script src="javascript/jquery-3.1.0.js"></script>
<script>
	/* $(document).ready(function(){
		var table="";
		$.ajax({
			url:"/display",
			type:"post",
			datatype:"json",
			success:function(data){
				for(var i=0;i<data.length;i++) {
					table+="<tr><td>"+data[i].eid+"</td><td>"+data[i].name+"</td><td>"+data[i].password+"</td></tr>";
				}
				$("#tableId").append(table);
			}
		});
	}); */
</script>
</head>
<body>
	<table id="tableId">
		<tr id="trId"><td>Id</td><td>Name</td><td>Password</td></tr>
    	<tr>${userDetails}</tr>
    </table>
</body>
</html>