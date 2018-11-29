/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import controler.javaconnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author rishav
 */
public class message {
    public static String add(String email1){
        String msg = "";
        try{
        Connection con=javaconnect.connectDb();
        PreparedStatement ps=con.prepareStatement("select name,total,city,locality,address from user where email='"+email1+"'");
        ps.executeQuery();
        ResultSet rs=ps.getResultSet();  
            String name = null,locality = null,address = null,city = null;
            int total = 0;
            while(rs.next()){
                name=rs.getString("name");
                total=rs.getInt("total");
                city=rs.getString("city");
                locality=rs.getString("locality");
                address=rs.getString("address");
            }
            msg=("Dear  "+name+" \nGood food makes everything great,thank you for ordering food from Ahar.Your order will be soon delivered to your address:\n"+address+"\n"+locality+"\n"+city+" India\n"+"Total amount= "+total+"\nEnjoy your meal");
           
          } catch (Exception e) {System.out.print(e);}
        return msg;
    }
}
