<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>

<style>
body{
padding-top:9px;
text-align:center;
}

</style>
<body>
<h1> New User Registration</h1>

<form action="register">  
<input type="text" name="name" value="User Name" onclick="this.value=''"/><br/> 
<input type="password" name="pass"  value="Password..." onclick="this.value=''"/><br/> 
<input type="text" name="email"  value="Email ID..." onclick="this.value=''"/><br/>  
<input type="text" name="contact"  value="Contact..." onclick="this.value=''"/><br/>
<br>  
<input type="submit" value="Register"/>  
</form>  

</body>
</html>