/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import controler.javaconnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author rishav
 */
public class order {
    public static void update(String name,double total,String dishes[]){
        try {
            Connection con=javaconnect.connectDb();
            String dish=Arrays.toString(dishes);
            System.out.print(dish);
            PreparedStatement ps=con.prepareStatement("update user set total="+total+",dishes='"+dish+"' where username='"+name+"'");
            ps.executeUpdate();
        } catch (Exception ex) {
            System.out.print(ex);
        }
    }
}
