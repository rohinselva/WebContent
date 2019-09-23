<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<style>
h1{
text-align: center;
}

.login{

background-color: skyblue;
}

</style>
<body>

<h1>Welcome to the Page</h1>
<center>
<br>
<br>

<form action="login">
<table>
<tr>

<td>Enter UserName</td><td> <input type="text" name="name"><br></td></tr>
<tr><td>Enter Password</td><td> <input type="password" name="pass"><br></td></tr>
</center>
</table>

<center>
<input class="login" type="submit" value="login">
</center>

</tr>
</form>
<br>
</td><td><a href="Register.jsp"><input type="submit" value="Register"></a></td>

</body>
</html>  