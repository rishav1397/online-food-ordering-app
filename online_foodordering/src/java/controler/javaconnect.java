/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author rishav
 */
public class javaconnect {
    private javaconnect(){}
    static Connection con;
    public static Connection connectDb(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/app?user=root&password=236219237007&useSSL=false&verifyServerCertificate=false&allowMultiQueries=true");
        } catch (Exception ex) {
            System.out.print(ex);
        }
        return con;
    }
}
