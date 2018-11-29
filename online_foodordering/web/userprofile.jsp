<%-- 
    Document   : userprofile
    Created on : Nov 26, 2018, 1:55:33 PM
    Author     : rishav
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="controler.javaconnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    font-size: 1.2vw;
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
.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}
        </style>
    </head>
    <body>
               <div id="div11">
    <ul>
        <li><img src="food.jpg" style="width:3.5vw;height: 4vw; margin-left: 10vw;"></li>
        <li ><a>My Account</a></li>
  <li style="float:right;margin-right:8vw;padding-top:  "><form action="logout" method="post"><button type="submit">Sign out</button></form></li>
  <% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
  <li style="float: right"><a><%= request.getSession().getAttribute("uname").toString()%></a></li>
  <li style="float: right"> <a href="#news">Contact</a></li>
  <li style="float: right"> <a href="location.jsp">Home</a></li>
    </ul></div>
  <div style="background-color: #37718E;margin-top: 5vw;width: 100vw;margin-left: 0vw;">
      <div>
          <div class="tab">
  <button class="tablinks" onclick="openCity(event, 'London')">Recent Orders</button>
  <button class="tablinks" onclick="openCity(event, 'Paris')">Recent Total amount</button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">Address</button>
</div>


      <% String str=request.getSession().getAttribute("uname").toString();
          PrintWriter pw=response.getWriter();
           double sum=0;
           Connection con=javaconnect.connectDb();
      PreparedStatement ps=con.prepareStatement("select name,phone_no,email,dishes,address,total,city,locality from user where username='"+str+"'");
      ps.executeQuery();
      String dishes[];
      String dish="",address="",name="",phone_no="",email="",city="",locality="";
      int total=0;
      ResultSet rs=ps.getResultSet();
      while(rs.next()){
          name=rs.getString("name");
          phone_no=rs.getString("phone_no");
          email=rs.getString("email");
          dish=rs.getString("dishes");
          address=rs.getString("address");
          total=rs.getInt("total");
          city=rs.getString("city");
          locality=rs.getString("locality");
}
      %>
      <div style="margin-left:10vw;margin-top: 3vw;font-weight: ">
          <span style="color:white;font-size: 3vw;"><%= name%></span><br>
          <span style="color:white;font-size: 1.2vw;"><%= email %> .</span>
          <span style="color:white;margin-left: 2vw;font-size: 1.2vw;"><%= phone_no%></span>
      </div> 
      <div id="London" class="tabcontent" style="color:white;margin-left: 12vw;margin-top: 2vw;">
  <h1>Orders</h1>
  <p><div style="font-size:1.2vw;">
      Your recent order items are :
  <%= dish%></div></p>
</div>

<div id="Paris" class="tabcontent" style="color:white;margin-left: 12vw;margin-top: 2vw;">
  <h1>Recent Total amount</h1>
  <p><div style="font-size:1.2vw;">
      <%= total %>
  </div></p> 
</div>

<div id="Tokyo" class="tabcontent" style="color:white;margin-left: 12vw;margin-top: 2vw;">
  <h1>Address</h1>
  <p><div style="font-size:1.2vw;">
      <%= address%><br>
      <%= locality%><br>
      <%= city%>
  </div></p>
</div>

<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>
      </div>
  </div>
    </body>
</html>
