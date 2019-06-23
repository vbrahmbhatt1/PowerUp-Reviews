<!DOCTYPE html>
<html>
<head>

<style>
p {
	font-family: Verdana;
    font-size: 20px;
}
h1 {
    text-align: center;
}

div {
    width: 1200px;
    padding: 5px;
    background-color: white;
     margin: auto;
}
img {
    display: block;
    margin: 0 auto;
    border-radius: 2px;
    padding: 0px;

}
a {
    color: #33ff33;
    margin: 0 auto;
    padding: 2px;
    transition: 0.3s;
}

a:hover {
    box-shadow: 0 0 2px 1px rgba(0, 100, 70, 0.5);
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
	text-align:center;
}

li {
   display:inline;
}

li a {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 13px 15px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: navy;
}

.active {
    background-color: navy;
}

</style>
<script language="javascript">
	function validate(formObj)
	{
	if(formObj.t1.value.length==0)
	{
	alert("Please Enter user name");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter Password");
	formObj.t2.focus();
	return false;
	}
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>
</head>
<body>

<div>
	<center><img src="img/logo.jpg" alt="PowerUp Reviews" style="width:489px;height:159px;"></center>

	<a name="top"></a>
	<p align="right"><a href="Login.jsp">Sign in</p></a>
	<form>  <input type="text" name="search" placeholder="Search.."></form>

<ul>
 <li><a href="home.html">Home</a></li>
  <li><a href="reviews.html">Reviews</a></li>
  <li><a class="active" href="forums.html">Forums</a></li>
  <li><a href="upcoming.html">Upcoming Games</a></li>
    <li><a href="contact.html">Contact Us</a></li>
		<li><a href="index.html">Chat Room</a></li>
</ul>
 <form name="f1" method="post" action="Login" onsubmit="return validate(this);">
  <h1 align="center"><font size="" color="#FFF">User Login Screen</h1><br/>

	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<font size=3 color=black><center>"+res+"</center>");
	}%>
<table  align="center">
<tr><td><font size="" color="black"><b>Username</b></td><td><input type="text" name="t1"/></td></tr>

<tr><td><font size="" color="black"><b>Password</b></td><td><input type="password" name="t2" /></td></tr>


<tr><td></td><td><input type="submit" value="Login">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Register.jsp"><font size="" color="black">New User</a>
</td>

</table><br/><br/>
<center><a href="#top"><img src ="img/topanchor.jpg"></a></center>
</body>
</html>
