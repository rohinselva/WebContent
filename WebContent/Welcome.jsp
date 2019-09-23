<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
* 
{
  box-sizing: border-box;
}

/* Create three equal columns that floats next to each other */
.column1 
{
  float: left;
  width: 20%;
  padding: 10px;
  height: 550px; 
  border: double;
}

.box1
{
    background-color: antiquewhite;
    height: 230px;
}

.box2
{
    background-color: aliceblue;
    height: 230px;
}
.column2
{
  float: left;
  width: 60%;
  padding: 10px;
  height: 550px; 
  border: double;
}

.column3
{
  float: left;
  width: 20%;
  padding: 10px;
  height: 550px; 
  border: double;
}

.widgEditor
{
height: 200px;
width:50%;
}

/* Clear floats after the columns */
.row:after 
{
  content: "";
  display: table;
  clear: both;
}
</style>

<title>Welcome Page</title>
</head>
<body>

<center>
<b><h3>Welcome User to the New Page</h3></b>
</center>




<div class="row">
  <div class="column1" style="background-color:#ccc;">
  
   <div class="box1" > <h5>Box 1</h5>
    <p><center>Content</center></p>
   </div>

   <div class="box2" > <h5>Box 2</h5>
   <a href="javascript:myFunction()">+</a> Folder
   <div id="myDIV">

<ul>
<li><a href="javascript:textBox()">File 1</a></li>

<div id="markItUp">
</div>
<br>
<li>File 2</li>

</ul>

  </div>

<script>
function myFunction() {
  var x = document.getElementById("myDIV");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script>
   
</div>
</div>
 
  <div class="column2" style="background-color:#ddd;">
    <h5>Column 2</h5>
    <p><center>Content</center></p>
    <textarea id="markItUp" cols="75" rows="20">Some Sample Text</textarea>
   
   
<script>

function textBox() 
{
	var myWindow = window.open("", "MsgWindow", "width=200,height=100");
}
</script>
    
  </div>
  
  <div class="column3" style="background-color:#eee;">
    <h5>Column 3</h5>
    <p><center>Content</center></p>
  </div>
</div>
<%

if(session.getAttribute("name")==null){
	
	response.sendRedirect("Login.jsp");
}
%>
<br>

<form action="Logout">
<center>
<input type="submit" value="Logout">
</center>
</form>

</body>
</html>


