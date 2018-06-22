/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package SOScontroller.servlet;

import connexion.BD;
import classesbd.Animal;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author expensya
 */
@WebServlet(name = "sansrefugepermanent", urlPatterns = {"/sansrefugepermanent"})
public class ajoutperm extends HttpServlet {

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
   try {
           
            String etat= request.getParameter("etat");
            String taille= request.getParameter("taille");
            String espece= request.getParameter("espece");
            String type= request.getParameter("type");
            String age= request.getParameter("age");
            String region= request.getParameter("region");
            
            Connection cnx=BD.sqlConnect();
         /*  String req="SELECT * FROM animal " +"WHERE etat=? &&taille=? &&espece=?&&type=?&&age=? &&region=? ";
           
            PreparedStatement preparedStmt=(PreparedStatement) cnx.prepareStatement(req);
             
      preparedStmt.setString (1, etat);
      preparedStmt.setString   (2,taille);
      preparedStmt.setString(3, espece);
      preparedStmt.setString    (4, type);
preparedStmt.setString (5, age);
preparedStmt.setString (6, region);
            ResultSet res=preparedStmt.executeQuery();
            
           int i=0;
            if (res.next())
            {i++;}
            if(i==0)
            
               
          {i=0;*/
              String query = " insert into animal ( etat, taille, espece, type, age, region)"
        + " values ( ?, ?, ?, ?,?,?)";

      // create the mysql insert preparedstatement

      PreparedStatement preparedStmt1 = cnx.prepareStatement(query);
   
      preparedStmt1.setString (1, etat.toString());
      preparedStmt1.setString   (2,taille.toString());
      preparedStmt1.setString(3, espece.toString());
      preparedStmt1.setString    (4, type.toString());
preparedStmt1.setString (5, age.toString());
preparedStmt1.setString (6, region.toString());
              preparedStmt1.executeUpdate();
String query2 = " insert into sansrefuge ( perdu,emplacement,numPrioritaire,mailProp,datededepot,datedeliberation,adoption,maitre)"
        + " values ( ?, ?, ?, ?,?,?,?,?)";

      // create the mysql insert preparedstatement
DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
Date date = new Date();
String s =dateFormat.format(date);
      PreparedStatement preparedStmt2 = cnx.prepareStatement(query2);
   
      preparedStmt2.setInt (1, 1);
      preparedStmt2.setString   (2,"null");
      preparedStmt2.setInt(3, 0);
      preparedStmt2.setString    (4, "null");
preparedStmt2.setString (5, s);
preparedStmt2.setString (6, "null");
preparedStmt2.setInt (7, 0);
preparedStmt2.setString (8, "null");
              preparedStmt2.executeUpdate();
          
    
         
           
    
          
            
          

          
          
        } catch (SQLException ex) {
            Logger.getLogger(ajoutperm.class.getName()).log(Level.SEVERE, null, ex);
        }
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
