<%-- 
    Document   : order
    Created on : Nov 21, 2018, 11:04:19 AM
    Author     : rishav
--%>
<%@page import="model.order"%>
<% if (!(request.getSession().getAttribute("uname")==null)){
    
%>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="controler.javaconnect"  %>
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
th{
    font-size: 1.5vw;
}
td{
    font-size: 1vw;
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
  
  <div style="margin-top:10vw;margin-left: 36vw;">
      <h1 style="margin-left: 5.0vw;font-size: 2.0vw;">Your Cart</h1>
           <table cellspacing="20vw;" style="">
               <tr>
                   <th>Item Name</th>
                   <th>Quantity</th>
                   <th>Price</th>
               </tr>
              
       <% 
           PrintWriter pw=response.getWriter();
           double sum=0;
           Connection con=javaconnect.connectDb();
           Statement st=con.createStatement();
           ResultSet rs;
           String[] str;
           String dishes[];
           int k=0;
           str=request.getParameterValues("chk1");
           dishes=new String[str.length];
           /*for(int i=0;i<sports.length;i++){
               System.out.print(sports[i]+" ");
           }*/
           float count=0;
           if(str!=null){
               for(int i=0;i<str.length;i++){
                   //System.out.print(sports[i]+" ");
                   st.executeQuery("select item_name,price from cuisines where itm_no="+str[i]+"");
                   rs=st.getResultSet();
                   while(rs.next()){
                       String nameVal=rs.getString("item_name");
                       //System.out.print(nameVal);
                       int c=rs.getInt("price");
           
               sum+=c;
               System.out.print(sum);
               int q=1;
               count++;%>
               <tr><td><%= rs.getString("item_name")%></td>
                   <% dishes[k++]=rs.getString("item_name");%>
                   <td><%=q%></td>
                   <td><%= rs.getInt("price")%></td>
               </tr>
               <%
              }}%>
              <tr style="font-size: 1.75vw;font-weight: bolder;">
                  <td>Total</td>
                  <td><%= count%></td>
                  <td><%= sum%></td>
              </tr>
<%
           }
for(int i=0;i<k;i++)
System.out.print(dishes[i]+" ");
 String str1=request.getSession().getAttribute("uname").toString();
order.update(str1, sum,dishes);
  System.out.print(str1);
       %>
           </table>
           <form method="post"><input type="submit" value="Checkout" style="margin-left: 5.0vw;font-size: 2.0vw;border: solid;background: transparent;" formaction="post.jsp"></form>
       </div>
    </body>
</html>
<% }
else
{
response.sendRedirect("index.jsp");
}%>