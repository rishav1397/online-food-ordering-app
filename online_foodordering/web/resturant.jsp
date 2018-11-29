<%-- 
    Document   : resturant.jsp
    Created on : Nov 20, 2018, 7:05:40 AM
    Author     : rishav
--%>
<% if (!(request.getSession().getAttribute("uname")==null)){
    
%>
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
#img11{
    margin-left: 14vw;
    margin-top: 4vw;
    margin-bottom: 3vw;
    width: 15vw;
    height: 10vw;
    display: inline-block;
    float: left;
}
.img12{
    height: 12vw;
    width: 15vw;
   
}
        </style>
        <script>
	 var c=0;   
	 function update_value(chk_bx){
		      if(chk_bx.checked)
		         {
		             var a="checked";
		 	   c+=1;
		 }
		         else{
		             var a="not checked";
		 		if(c>0){
		 			c-=1;
		 		}else if(c==0){
		 			c=0;
		 		}
		         }
		      if (c==0)
		    	  {
			         document.getElementById('wish').innerHTML ='Cart : Empty';

		    	  }else{
		         document.getElementById('wish').innerHTML ='Cart : '+c+'';
		    	  }
		     }
	 
	 

		 </script>
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
  <li style="float:right;margin-right:8vw;padding-top:  "> <form action="logout" method="post"><button type="submit">Sign out</button></form></li>
  <% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
  <li style="float:right"><a><div id="wish" >Cart: Empty</div></a></li>
  <li style="float: right"><a href="userprofile.jsp"><%= request.getSession().getAttribute("uname").toString()%></a></li>
  <li style="float: right"> <a href="#news">Contact</a></li>
  <li style="float: right"> <a href="location.jsp">Home</a></li>
    </ul></div>
  <div style="width:100%;background-color: #171A29;margin-top: 5vw; height: 18vw;margin-left: 0;">
      <img src="auvtncksxjd2gg3b97dl.webp" id="img11">
      <div style="display: inline-block;margin-top: 5vw;color: white;margin-left:5vw;font-size: 2vw;">Nanak Sweets</div><br><div style="font-size: 0.8vw;color: white;margin-left: 5vw;display: inline-block;margin-top: 0.3vw;">Sector 19 | West Chd</div><br><div style="font-size: 0.8vw;color: white;margin-left: 5vw;display: inline-block;margin-top: 0.3vw;">North Indian</div><br><div style="font-size: 1.0vw;color: white;margin-left: 5vw;display: inline-block;margin-top: 0.8vw;">Rating 4.1 | 30mins | Rs200</div><br><div style="font-size: 0.6vw;color: white;margin-left: 5vw;display: inline-block;margin-top: 0.3vw;">1000+Ratings | Delivery Time | Cost for two</div>`    ` `    
    </div>
  <div style="margin-left:30vw;"><h1>Recommended</h1></div>
  <form action="order.jsp" method="post">
  <div style="margin-left: 30vw;margin-top: 3vw;">
     
      <table cellspacing="30vw;">
          <tr>
              <td><img src="images1.jpeg" class="img12"><br><div style="margin-left:0.3vw;margin-top: 0.2vw;">Plain Khoya Burfi(Per Kg)</div><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Sweets</div><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 1.0vw;">Rs. 300 <button type="button"  style="display:inline-block;background: transparent;border:1px solid;border-color: orange;color: orange;margin-left: 7vw;">ADD</button><input  type="checkbox" name="chk1" value="1" onchange="update_value(this);"></div></td>
              <td><img src="index.jpeg" class="img12"><br><div style="margin-left:0.3vw;margin-top: 0.2vw;"></div>Besan Ladoo(Per Kg)<div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Sweets</div><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 1.0vw;">Rs. 160 <button type="button" style="display:inline-block;background: transparent;border:1px solid;border-color: orange;color: orange;margin-left: 7vw;">ADD</button><input  type="checkbox" name="chk1" value="2" onchange="update_value(this);"></div></td>
          </tr>
          <tr>
              <td><img src="index1.jpeg" class="img12"><br><div style="margin-left:0.3vw;margin-top: 0.2vw;">Moong Dal Burfi(Per Kg)</div><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Sweets</div><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 1.0vw;">Rs. 400 <button type="button" style="display:inline-block;background: transparent;border:1px solid;border-color: orange;color: orange;margin-left: 7vw;">ADD</button><input  type="checkbox" name="chk1" value="3" onchange="update_value(this);"></div></td>
              <td><img src="download.jpeg" class="img12"><br><div style="margin-left:0.3vw;margin-top: 0.2vw;">Gulabjamun(Per Kg)</div><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Sweets</div><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 1.0vw;">Rs. 160 <button type="button" style="display:inline-block;background: transparent;border:1px solid;border-color: orange;color: orange;margin-left: 7vw;">ADD</button><input  type="checkbox" name="chk1" value="4" onchange="update_value(this);"></div></td>
          </tr>
          <tr>
              <td><img src="milk.jpeg" class="img12"><br><div style="margin-left:0.3vw;margin-top: 0.2vw;">Milk cake(Per Kg)</div><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Sweets</div><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 1.0vw;">Rs. 360 <button type="button" style="display:inline-block;background: transparent;border:1px solid;border-color: orange;color: orange;margin-left: 7vw;">ADD</button><input  type="checkbox" name="chk1" value="5" onchange="update_value(this);"></div></td>
              <td><img src="jalebi.jpeg" class="img12"><br><div style="margin-left:0.3vw;margin-top: 0.2vw;">Jalebi(250 gms)</div><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Sweets</div><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 1.0vw;">Rs. 45 <button type="button" style="display:inline-block;background: transparent;border:1px solid;border-color: orange;color: orange;margin-left: 7vw;">ADD</button><input  type="checkbox" name="chk1" value="6" onchange="update_value(this);"></div></td>
          </tr>
      </table>
  </div>
   <hr style="margin-left: 18vw;margin-right: 18vw;">
   <div><h1 style="margin-left:30vw;">Sweets</h1></div>
   <div style="margin-left:30vw;">
       <div style="margin-top: 0.2vw;font-size: 1.2vw;">Punjabi Ladoo(Per Kg)<button type="button" style="display:inline-block;background: transparent;border:1px solid;border-color: orange;color: orange;margin-right:33vw; float: right;">ADD</button><input  type="checkbox" name="chk1" value="7" onchange="update_value(this);" style="display:inline-block;margin-right:31vw; float: right;">
           <br><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 1.0vw;">Rs. 140</div></div></div>
           <hr style="margin-left: 28vw;margin-right: 28vw;">
           <div style="margin-left:30vw;">
       <div style="margin-top: 0.2vw;font-size: 1.2vw;">Kesar Ladoo (Per kg)<button type="button" style="display:inline-block;background: transparent;border:1px solid;border-color: orange;color: orange;margin-right:33vw; float: right;">ADD</button><input  type="checkbox" name="chk1" value="8" onchange="update_value(this);"style="display:inline-block;margin-right:31vw; float: right";>
           <br><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 1.0vw;">Rs. 160</div></div></div>
    <hr style="margin-left: 28vw;margin-right: 28vw;">
           <div style="margin-left:30vw;">
       <div style="margin-top: 0.2vw;font-size: 1.2vw;">Plain Patisa (Per kg)<button type="button" style="display:inline-block;background: transparent;border:1px solid;border-color: orange;color: orange;margin-right:33vw; float: right;">ADD</button><input  type="checkbox" name="chk1" value="9" onchange="update_value(this);"style="display:inline-block;margin-right:31vw; float: right";>
           <br><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 1.0vw;">Rs. 200</div></div></div>
           <hr style="margin-left: 28vw;margin-right: 28vw;">
           <div style="margin-left:30vw;">
       <div style="margin-top: 0.2vw;font-size: 1.2vw;">Kalakand (Per kg)<button type="button" style="display:inline-block;background: transparent;border:1px solid;border-color: orange;color: orange;margin-right:33vw; float: right;">ADD</button><input  type="checkbox" name="chk1" value="10" onchange="update_value(this);"style="display:inline-block;margin-right:31vw; float: right";>
           <br><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 1.0vw;">Rs. 400</div></div></div>
           <hr style="margin-left: 28vw;margin-right: 28vw;">
           <div style="margin-left:30vw;">
       <div style="margin-top: 0.2vw;font-size: 1.2vw;">Rasgulla (Per kg)<button type="button" style="display:inline-block;background: transparent;border:1px solid;border-color: orange;color: orange;margin-right:33vw; float: right;">ADD</button><input  type="checkbox" name="chk1" value="11" onchange="update_value(this);"style="display:inline-block;margin-right:31vw; float: right";>
           <br><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 1.0vw;">Rs. 180</div></div></div>
           <hr style="margin-left: 28vw;margin-right: 28vw;">
           <div style="margin-left:30vw;">
       <div style="margin-top: 0.2vw;font-size: 1.2vw;">Rasbari (Per kg)<button type="button" style="display:inline-block;background: transparent;border:1px solid;border-color: orange;color: orange;margin-right:33vw; float: right;">ADD</button><input  type="checkbox" name="chk1" value="12" onchange="update_value(this);" style="display:inline-block;margin-right:31vw; float: right";>
           <br><div style="margin-left:0.3vw;margin-top: 0.2vw;color:#969EAB;font-size: 1.0vw;">Rs. 300</div></div></div>
           <div style="background-color: #171A29"><input type="submit" value="Place my order" style="margin-left:43vw;margin-bottom: 5vw;margin-top: 3vw;font-size: 2.0vw;background: transparent;color: orange;border: solid;"></div></form>
    </body>
</html>
<%}
else
{
response.sendRedirect("index.jsp");
}%>