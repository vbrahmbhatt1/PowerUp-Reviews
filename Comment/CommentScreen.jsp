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
input[type=text] {
    width: 130px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 100%;
}

input[type=submit] {
    width: 200px;
    background-color: #00FF00;
    color: white;
    padding: 10px 10px 10px 10px;
    margin: 30px 50px 10px 200px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
	float: center;
}

input[type=submit]:hover {
    background-color: #2dcb20;
}

</style>

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
</ul>
<form name="f1" method="post" action="Comments" onsubmit="return validate(this);">
  <h1 align="center"><font size="" color="#FFF">Comments Screen</h1><br/>

	<%
	if(session.getAttribute("user") == null){
		response.sendRedirect("home.html");
	}
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<font size=3 color=black><center>"+res+"</center>");
	}%>
<table>
<tr>
<tr><td><font size="4" align="center" style="color:#00FF00"><b>Batman: The Telltale Series--Episode 4: Guardian of Gotham</b></td></tr>
<tr><td><textarea name="t1" rows="5" cols="120"></textarea></td></tr>

<tr><td><font size="4"align="center" style="color:#00FF00"><b>Dishonored 2</b></td></tr>
<tr><td><textarea name="t2" rows="5" cols="120"/></textarea></td></tr>

<tr><td><font size="4" align="center" style="color:#00FF00"><b>Watch Dogs 2 </b></td></tr>
<tr><td><textarea name="t3" rows="5" cols="120"/></textarea></td></tr>

<tr><td><font size="4" align="center" style="color:#00FF00"><b>Hitman: Episode 6: Hokkaido </b></td></tr>
<tr><td><textarea name="t4" rows="5" cols="120"/></textarea></td></tr>
<tr><td><input type="submit" value="Submit">
</td>
</tr>

</table>
<center><a href="#top"><img src ="img/topanchor.jpg"></a></center>
</body>
</html>
