/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package SOScontroller.servlet;

import connexion.BD;
import classesbd.Animal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author expensya
 */
@WebServlet(name = "recherche", urlPatterns = {"/recherche"})
public class recherche extends HttpServlet {

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
            throws ServletException, IOException  
    {
        try {
            ArrayList<Animal> al = new ArrayList<>();
            String etat = request.getParameter("etat");
            String taille = request.getParameter("taille");
            String espece = request.getParameter("espece");
            String type = request.getParameter("type");
            String age = request.getParameter("age");
            String region = request.getParameter("region");
            String req = "SELECT etat, taille, espece, type, age, region FROM sansrefuge as sr  join animal as a on (a.idanimal=sr.idSR)" + "WHERE adoption=? &&perdu=?&& etat=? &&taille=? &&espece=?&&type=?&&age=? &&region=? ";
            Connection cnx = BD.sqlConnect();
            PreparedStatement preparedStmt = (PreparedStatement) cnx.prepareStatement(req);
            preparedStmt.setInt(1, 1);
            preparedStmt.setInt(2, 0);
            preparedStmt.setString(3, etat.toString());
            preparedStmt.setString(4, taille.toString());
            preparedStmt.setString(5, espece.toString());
            preparedStmt.setString(6, type.toString());
            preparedStmt.setString(7, age.toString());
            preparedStmt.setString(8, region.toString());
            ResultSet res = preparedStmt.executeQuery();
          while (res.next()) {
                String p1 = res.getString("etat");
                String p2 = res.getString("taille");
                String p3 = res.getString("espece");
                String p4 = res.getString("type");
                String p5 = res.getString("age");
                String p6 = res.getString("region");
                Animal a = new Animal(p1, p2, p3, p4, p5, p6);
                al.add(a);
                
            }

            request.setAttribute("jeton", al);

            getServletContext().getRequestDispatcher("/RsltRecherche/RsltRecherche.jsp").forward(request, response);
        } catch(SQLException ex) {
            Logger.getLogger(recherche.class.getName()).log(Level.SEVERE, null, ex);
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
