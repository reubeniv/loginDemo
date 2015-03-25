<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<h1>Add User</h1>
<div>
	<form method="POST" action="newUser">
		First Name: <input type="text" name="first_name" placeholder="first name"><br>
		Last Name: <input type="text" name="last_name" placeholder="last_name"><br>
		Email Address: <input type="text" name="email" placeholder="email address"><br>
		Username: <input type="text" name="login" placeholder="Username"><br>
		Password: <input type="password" name="password" placeholder="Password"><br>
		<button type="submit" >Submit</button>
		<a class = "new-user" href="hello">Cancel</a>
	</form>
</div>

</body>
</html>