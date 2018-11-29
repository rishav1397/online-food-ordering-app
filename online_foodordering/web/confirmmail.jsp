<%-- 
    Document   : confirmmail
    Created on : Nov 24, 2018, 10:54:04 PM
    Author     : rishav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                        <style>
                                #div11{
        position: fixed;
        width: 100vw;
        top:0;
        margin-left: 0vw;
    }
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background: transparent;
    padding-top: 0.5vw;
    width: 100vw;
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
        body {
            background-image: url(images1.gif);
            background-repeat: no-repeat;
           background-size: 100%;
           opacity: 0.8;
        }
        input[type=text],input[type=password]{
            color: black;
            font-size: 18px;
            padding: 14px 16px;
            margin-left: 4.5vw;
        }
        b{
            margin-left: 7vw;
            text-align: left;
        }
        .b1{
            padding: 10px 12px;
            margin-left: 10vw;
            margin-top: 2vw;
            font-size: 0.8vw;
        }
        #img1{
            height: 70px;
            width: 80px;
        }
        label{
            font-size: 1.1vw;
        }
</style>
    </head>
    <body>
        <div id="div11">
            <ul>
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
  <li style="float: right"><a><%= request.getSession().getAttribute("uname").toString()%></a></li>
  <li style="float: right"> <a href="#news">Contact</a></li>
  <li style="float: right"> <a href="location.jsp">Home</a></li>
    </ul></div>
        <div style="margin-top: 12vw;margin-left: 36vw; background-color: black; height:23vw;color: white;border: solid 1px;border-radius: 2vw;margin-right: 39vw;">
        <img src="food.jpg" alt="icon" id="img1" style="margin-left:10vw;opacity: 0.9;border-radius: 2vw;margin-top: 2vw;"><br>
        <h2 style="margin-left:10vw;"></h2>
        <form  action="confirmmail" method="post" style="border: solid 19x;">
                <label for="username"><b>Confirm Your Email</b></label><br>
            <input type="text" name="email" placeholder="Enter your email" required><br>
            <button type="submit" name="Signin" class="b1">Submit</button><br>
        </form>
        <br>
        </div>
    </body>
</html>
