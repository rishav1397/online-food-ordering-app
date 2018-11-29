/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rishav
 */
public class signup extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");  
        PrintWriter out = response.getWriter();
        String n=request.getParameter("name"); 
        String u=request.getParameter("username");  
        String e=request.getParameter("email");  
        String p=request.getParameter("passw");
        int a=0;
        String b="",c="",d="",f="";
          System.out.print(n+" "+u+" "+e+" "+p);
try{  
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/app?user=root&password=236219237007&useSSL=false&verifyServerCertificate=false&allowMultiQueries=true");  
  
PreparedStatement ps=con.prepareStatement(  
"insert into user values(?,?,?,?,?,?,?,?,?)");  
  
ps.setString(1,n);  
ps.setString(2,u);  
ps.setString(3,e);  
ps.setString(4,p);  
ps.setInt(5,a);
ps.setString(6,b);
ps.setString(7,c);
ps.setString(8,d);
ps.setString(9,f);
int i=ps.executeUpdate(); 
if(i>0)  
//request.getRequestDispatcher("/signin.jsp").forward(request,response);
          response.sendRedirect("signin.jsp");
else
    response.sendRedirect("/signup.jsp");
}catch (Exception e2) {System.out.println(e2);}  
          
out.close();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
