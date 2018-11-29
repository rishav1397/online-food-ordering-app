/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author rishav
 */
public class logindao {
     public boolean search(login l){
        login l1=null;
        Configuration cf=new Configuration();
        cf.configure("hibercfg/hibernate.cfg.xml");
        SessionFactory sf=cf.buildSessionFactory();
        Session s=sf.openSession();
        l1=(login)s.get(login.class,l.getUsername());
        s.close();
        sf.close();
        if(l1==null){
            return false;
        }else{
            if(l1.equals(l)){
                return true;
            }
            else
                return false;
        }
    }
}
 