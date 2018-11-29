<%-- 
    Document   : order
    Created on : Nov 21, 2018, 11:04:19 AM
    Author     : rishav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if (!(request.getSession().getAttribute("uname")==null)){
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
		<link rel="stylesheet" href="w3.css" type="text/css">
                <style>
                                #div11{
        position: fixed;
        width: 100%;
        top:0;
    }
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color:white;
    padding-top: 0.5vw;
}

li {
    float: left;
}

li a {
    display: block;
    color: #171A29;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 1.3vw;
    display: inline-block;
}
li button{
    display: block;
    color: #171A29;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 1.3vw;
    display: inline-block;
    background: transparent;
    border: none;
}

.active {
    background-color: #4CAF50;
}

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 1.3vw;    
    border: none;
    outline: none;
    color:#171A29;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}



.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: #171A29;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
.a11{
    display: inline-block;
    float:right;
}
.parallax {
    background-image: url('images1.gif');
    height: 100%;
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
#div12{
    margin-top: 7vw;
}
   </style>
    </head>
<body>

<div id="div11">
    <ul>
        <li><img src="food.jpg" style="width:3.5vw;height: 4vw; margin-left: 10vw;"></li>
        <li>
  <div class="dropdown">
    <button class="dropbtn">Locations 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Delhi</a>
      <a href="#">Chandigarh</a>
      <a href="#">Mumbai</a>
    </div>
  </div></li>
  <li style="float:right;margin-right:8vw;padding-top:  "><form action="logout" method="post"><button type="submit">Sign out</button></form></li>
  <% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
  <li style="float: right"><a href="userprofile.jsp"><%= request.getSession().getAttribute("uname").toString()%></a></li>
  <li style="float: right"> <a href="#news">Contact</a></li>
  <li style="float: right"> <a href="location.jsp">Home</a></li>
    </ul></div>
  <div id="div12">
  <fieldset>
      <legend> Enter Your Delivery Address:</legend>
<form action="placeorder" method="post" class="w3-container">
<table border=0>
    <% String str= request.getSession().getAttribute("uname").toString();%>
    <tr><th></th><td><input class="w3-input"  type="hidden" name="uname" id="fname" value="<%= str %>"></td></tr>
<tr><th>Enter Mobile Num. :</th><td><input class="w3-input"  type="text" name="mobile" id="mnum" required></td></tr>s
<tr><th>Select your City</th><td><select name="city">
							<option value="1" selected>---choose city---</option>
							<option value="Shimla">Shimla</option>
							<option value="Chandigarh">Chandigarh</option>
							<option value="Mumbai">Mumbai</option>
        </select>
    </td>
</tr>
<tr><th>Choose delivery region:</th><td><select name="location">
							<option value="1" selected>---choose region---</option>
 						 <option value="Sanjauli">Sanjauli</option>
 						 <option value="New Shimla">New Shimla</option>
 						 <option value="sect 35 west chd">sect 35 west chd</option>
 						 <option value="sec 25 chd">sec 25 chd</option> 
 						 <option value="sec 43 chd">sec 43 chd</option>  
 						  
 						  </select>	</td></tr>
<tr><th>Enter full Address :</th><td><input class="w3-input"  type="text" id="address" name="address" /></td></tr>
<br>
<tr><th colspan=2><input class="w3-btn w3-purple" type="submit" value="Place Order"/> </th></tr>						  
</table></form>
      </table></fieldset></div>
<div id="footer" style="height:270px; background-color:#171A29;display:block;"></div>
  <div class="parallax"></div>
</html>
<%}
else
{
response.sendRedirect("index.jsp");
}%>