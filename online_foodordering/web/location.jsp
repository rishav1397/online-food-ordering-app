<%-- 
    Document   : location
    Created on : Nov 18, 2018, 4:10:14 PM
    Author     : rishav
--%>
<% if (!(request.getSession().getAttribute("uname")==null)){
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="demo_icon.gif" type="image/gif" sizes="16x16">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
.img11{
    display: inline-block;
   height: 18vw;
   width: 18vw;
   margin-top: 3vw;
   margin-left: 2vw;
}

#img11{
    display: inline-block;
    height: 18vw;
    width: 18vw;
    margin-left:10vw;
    margin-top: 3vw;
}

#img12{
    
    display: inline-block;
        height: 18vw;
   width: 18vw;
   margin-top: 3vw;
   margin-left: 2vw;
}
.img21{
    float: left;
    height: 10vw;
    width: 14vw;
    margin-top: 0.8vw;
    margin-left: 0.8vw;
    margin-bottom: 0.8vw;
    margin-right: 0.8vw;
}
td{
    font-size: 1vw;
    height: 18vw;
    width: 15vw;
}
td:hover{
    border: 0.2vw;
    background-color: orange;
}
.icon{
    margin-left: 0.8vw;
    width: 2.8vw;
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
  <li style="float:right;margin-right:8vw;padding-top:  "> <form action="logout" method="post"><button type="submit">Sign out</button></form><li>
  <% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
  <li style="float: right"><a href="userprofile.jsp"><%= request.getSession().getAttribute("uname").toString()%></a></li>
  <li style="float: right"> <a href="#news">Contact</a></li>
  <li style="float: right"> <a href="location.jsp">Home</a></li>
    </ul></div>
    <div style="width:100%;background-color: #171A29;margin-top: 5vw; height: 24vw;margin-left: 0;">
      <img src="bmwnevtlf9j4x2w0ovc9.webp" alt="img11" id="img11">
      <img src="d5mfagoowfi6goyzgloi.webp" alt="cimg11"  class="img11">
      <img src="oj0pz7yujty06wie6cur.webp" alt="cimg11"  class="img11">
      <img src="rhnay3cqvw3reqc6nnz5.webp" alt="img12"  id="img12">
    </div>
    <div>
        <table align="center" cellspacing="35px;">
            <tr>
                <td><img src="z2lwrhkbsrytxwhzbtic.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">Roll Xpress</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Fast Food</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 30mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp; Rs250 for two</div></td>
                <td><a href="resturant.jsp" style="text-decoration:none;"><img src="auvtncksxjd2gg3b97dl.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;color: #171A29;">Nanak Sweets</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">North Indian</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 40mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp; Rs450 for two</div></a></td>
                <td><img src="qxtdh7bqur8ymuzu3csk.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">Keventers</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Beverages</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 35mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp; Rs550 for two</div></td>
            </tr>
                    <tr>
                        <td><img src="gzsqcejoofvkgh04l9nh.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">Guru Nanak Sweets</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">North Indian</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 33mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp;Rs220 for two</div></td>
                        <td><img src="eyrtf3kwbmjz4yrueo1v.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">Taco Bell</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Mexican</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 35mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp; Rs550 for two</div></td>
                        <td><img src="ujhnzynlvdwbf514z06v.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">Burgrill</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Fast Food</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 50mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp; Rs500 for two</div></td>
                    </tr>
                    <tr>
                        <td><img src="ftromjut3zjh2cuzwgsr.jpeg" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">Super Donuts</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Fast Food</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 30mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp; Rs400 for two</div></td>
                        <td><img src="pwrmmhfmmqmr5rhifelt.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">Subway</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">American,Fast Food</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 35mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp; Rs450 for two</div></td>
                        <td><img src="he5wv7dffaqfeut0efsf.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">Pizza Hut</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Fast Food,Pizzas</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 55mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp; Rs700 for two</div></td>
                    </tr>
        </table>
    </div>
  <h2 style="text-align: center;">Offers Around You</h2>
  <div>
        <table align="center" cellspacing="35px;">
            <tr>
                <td><img src="vnqi5ny5pbl3oialqy3y.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">The Chef Bite</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">North Indian</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 55mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp; Rs400 for two</div><div style="margin-left:0.8vw;margin-top:0.2vw; font-size:0.9vw;color:#8A584B; ">30% off on selected items</div></td>
                <td><img src="eslo68pvws0gsoo2uz8p.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">Late night Munchies</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">North Indian</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 46mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp; Rs450 for two</div><div style="margin-left:0.8vw;margin-top:0.2vw; font-size:0.9vw;color:#8A584B; ">30% of on all orders</div></td>
                <td><img src="he5wv7dffaqfeut0efsf.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">Pizza Hut</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">American,Fast Food</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 30mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp; Rs700 for two</div><div style="margin-left:0.8vw;margin-top:0.2vw; font-size:0.9vw;color:#8A584B; ">30% @ 2 Pizza Combo Category</div></td>
            </tr>
                    <tr>
                        <td><img src="ybgqboqpvnjoqnaio9zr.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">Chandigarh Rasoi</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">North Indian</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 44mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp;Rs450 for two</div><div style="margin-left:0.8vw;margin-top:0.2vw; font-size:0.9vw;color:#8A584B; ">Get 50% Off- Combo Offer</div></td>
                        <td><img src="drawx5cwsh2vlxxvqh3k.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">The Chef</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Mexican</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 35mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp; Rs550 for two</div><div style="margin-left:0.8vw;margin-top:0.2vw; font-size:0.9vw;color:#8A584B; ">40% @ Off on bestsellers</div></td>
                        <td><img src="srcn7nnwji2ok0yxo0qz.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">Shangz</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Chinese,Fast Food</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 42mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp; Rs350 for two</div><div style="margin-left:0.8vw;margin-top:0.2vw; font-size:0.9vw;color:#8A584B; ">Get 35% Off- Combo offer</div></td>
                    </tr>
                    <tr>
                        <td><img src="oon1ejyvmoxoewnon8ld.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">Churiosity</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Fast Food</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 30mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp; Rs400 for two</div><div style="margin-left:0.8vw;margin-top:0.2vw; font-size:0.9vw;color:#8A584B; ">35% off on all orders</div></td>
                        <td><img src="sqib0iheh5atoh9zig2f.webp" class="img21"><br><div style="margin-left:0.8vw;margin-top: 0.2vw;">Reboot Life</div><div style="margin-left:0.8vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;">Healthy Food,Salads</div><div style="display:inline-block;"><img src="download(3).png" class="icon"></div><div style="margin-left: 1.1vw;margin-top: 0.2vw;color:#969EAB;font-size: 0.9vw;display: inline-block;"> .&nbsp;&nbsp;&nbsp; 38mins &nbsp;&nbsp;&nbsp;.&nbsp;&nbsp; Rs300 for two</div><div style="margin-left:0.8vw;margin-top:0.2vw; font-size:0.9vw;color:#8A584B; ">30% off on all orders</div></td>
                        
                    </tr>
        </table>
    </div>

    </body>
</html>
<%}
else
{
response.sendRedirect("index.jsp");
}%>