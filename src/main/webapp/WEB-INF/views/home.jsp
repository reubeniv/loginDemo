<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>

<body id="loginApp">
<h1>
	${message}  
</h1>

<div>
	<form method="POST" action="login">
		<input type="text" name="username" placeholder="Username">
		<input type="password" name="password" placeholder="Password">
		<button type="submit" >Log In</button>
		<a class = "new-user" href="newUser">New User?</a>
	</form>
</div>

</body>

</html>
