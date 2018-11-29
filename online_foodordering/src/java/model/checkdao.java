/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import controler.javaconnect;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author rishav
 */
public class checkdao {
    public static int add(String username,String mobile,String city,String location,String address){
        int i=0;
        try{
            Connection con=javaconnect.connectDb();
            //System.out.print(username);
            PreparedStatement ps=con.prepareStatement("update user set phone_no="+mobile+" , city='"+city+"' , locality='"+location+"' , address='"+address+"' where username='"+username+"'");
            i=ps.executeUpdate();
        }catch(Exception e){ System.out.print(e);}
        return i;
    }
}
