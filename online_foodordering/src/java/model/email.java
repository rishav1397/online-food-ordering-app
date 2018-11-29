package model;

import controler.javaconnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;    
import javax.mail.*;    
import javax.mail.internet.*;    
class Mailer{  
    public static void send(String from,String password,String email1){  
          //Get properties object    
          Properties props = new Properties();    
          props.put("mail.smtp.host", "smtp.gmail.com");    
          props.put("mail.smtp.socketFactory.port", "587");    
          props.put("mail.smtp.socketFactory.class",    
                    "javax.net.ssl.SSLSocketFactory");    
          props.put("mail.smtp.auth", "true");    
          props.put("mail.smtp.port", "587");
          props.put("mail.smtp.starttls.enable", "true");
          //get Session   
          Session session=Session.getInstance(props,    
           new javax.mail.Authenticator() {    
           protected PasswordAuthentication getPasswordAuthentication() {    
           return new PasswordAuthentication(from,password);  
           }    
          });    
          //compose message 
          try{
            String sub,msg;
            sub="Gonna be hungry in 3...2...1 😩";
            msg=message.add(email1);
           MimeMessage message = new MimeMessage(session);    
           message.addRecipient(Message.RecipientType.TO,new InternetAddress(email1));    
           message.setSubject(sub);    
           message.setText(msg);    
           //send message  
           Transport.send(message);    
           System.out.println("message sent successfully");    
          } catch (Exception e) {System.out.print(e);}  
             
    }  
}  
public class email{    
 public static void mail(String email1) {    
      String from="rishavchauhan0999@gmail.com";
      String pass="236219237007";
     Mailer.send(from,pass,email1);  
 }    
}    