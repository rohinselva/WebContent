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
   <ul style="list-style-type:none">
  <li>
    <button href="#" type="button" id="dropdown" data-toggle="dropdown"
      class=" btn btn-primary dropdown-toggle multi-level-dropdown" aria-haspopup="true"
      aria-expanded="false">Click me</button>
    <ul style="list-style-type:none" class="dropdown-menu mt-2 rounded-0 white border-0 z-depth-1">
      <li class="dropdown-item dropdown-submenu p-0">
        <a href="#" data-toggle="dropdown" class="dropdown-toggle dropdown-item w-100">Click Me! </a>
        <ul class="dropdown-menu  rounded-0 white border-0 z-depth-1">
          <li class="dropdown-item p-0">
            <a href="#" class="dropdown-item w-100">Hey</a>
          </li>
          <li class="dropdown-item p-0">
            <a href="#" class="dropdown-item w-100">Hi</a>
          </li>
          <li class="dropdown-item p-0">
            <a href="#" class="dropdown-item w-100">Hello</a>
          </li>
        </ul>
      </li>
      <li class="dropdown-item dropdown-submenu p-0">
        <a href="#" data-toggle="dropdown" class="dropdown-toggle dropdown-item w-100">Click Me Too! </a>
        <ul class="dropdown-menu mr-2 rounded-0  white border-0 z-depth-1 r-100">
          <li class="dropdown-item p-0">
            <a href="#" class="dropdown-item w-100">How</a>
          </li>
          <li class="dropdown-item p-0">
            <a href="#" class="dropdown-item w-100">are</a>
          </li>
          <li class="dropdown-item dropdown-submenu p-0">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle dropdown-item w-100">Click Me Too! </a>
            <ul style="list-style-type:none"
              class="dropdown-menu mr-2 rounded-0 white border-0 z-depth-1 r-100 ">
              <li class="dropdown-item p-0">
                <a href="#" class="dropdown-item w-100">How</a>
              </li>
              <li class="dropdown-item p-0">
                <a href="#" class="dropdown-item w-100">are</a>
              </li>
            </ul>
          </li>
        </ul>
      </li>
    </ul>
  </li>
</ul>
   
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


