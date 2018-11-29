/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.sql.*;
import java.sql.Connection;

/**
 *
 * @author rishav
 */
public class signind {
    public static boolean validate(String name,String pass){  
boolean status=false;  
try{  
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/app?user=root&password=236219237007&useSSL=false&verifyServerCertificate=false&allowMultiQueries=true");  
      
PreparedStatement ps=con.prepareStatement(  
"select * from user where username= ? and password= ?");  
ps.setString(1,name);  
ps.setString(2,pass);  
      
ResultSet rs=ps.executeQuery();  
status=rs.next();  
}catch(Exception e){System.out.println(e);}  
return status;  
}  
}  

