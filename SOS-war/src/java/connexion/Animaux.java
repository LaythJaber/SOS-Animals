/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connexion;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import classesbd.Animal;

public class Animaux {
    private Connection connexion;
    
    public List<Animal> recupererUtilisateurs(Animal utilisateur) {
        
        
        List<Animal> utilisateurs = new ArrayList<Animal>();
        Statement statement = null;
        ResultSet resultat = null;

        loadDatabase();
        
        try {
            statement = connexion.createStatement();
          
          String req = "SELECT etat, taille, espece, type, age, region FROM sansrefuge as sr  join animal as a on (a.idanimal=sr.idSR)" + "WHERE adoption=? &&perdu=?&& etat=? &&taille=? &&espece=?&&type=?&&age=? &&region=? ";
           
            PreparedStatement preparedStatement = connexion.prepareStatement(req);
           
              preparedStatement.setInt (1, 1);
               preparedStatement.setInt(2,0);
             preparedStatement.setString (3, utilisateur.getEtat());
               preparedStatement.setString(4, utilisateur.getTaille());
             preparedStatement.setString(5,utilisateur.getEspece());
             preparedStatement.setString(6, utilisateur.getType());
             preparedStatement.setString (7, utilisateur.getAge());
                preparedStatement.setString (8, utilisateur.getRegion());
            
            
             resultat = preparedStatement.executeQuery();
            
            
            // Récupération des données
            while (resultat.next()) {
                String p1 = resultat.getString("espece");
                String p2 = resultat.getString("type");
                String p3 = resultat.getString("taille");
                String p4 = resultat.getString("age");
                String p5 = resultat.getString("region");
                String p6 = resultat.getString("etat");
                
                
                Animal bdanimal = new Animal();
                bdanimal.setTaille(p3);
                bdanimal.setType(p2);
                bdanimal.setAge(p4);
                bdanimal.setRegion(p5);
                bdanimal.setEspece(p1);
                bdanimal.setEtat(p6);
                
                utilisateurs.add(bdanimal);
            }
        } catch (SQLException e) {
        } finally {
            // Fermeture de la connexion
            try {
                if (resultat != null)
                    resultat.close();
                if (statement != null)
                    statement.close();
                if (connexion != null)
                    connexion.close();
            } catch (SQLException ignore) {
            }
        }
        
        return utilisateurs;
    }
    
    private void loadDatabase() {
        // Chargement du driver
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
        }

        try {
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:8889/sos", "root", "root");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void ajouterUtilisateur(Animal utilisateur) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO animal(etat, taille, espece, type, age, region) VALUES(?, ?, ?, ?,?,?);");
    preparedStatement.setString (1, utilisateur.getEtat());
    preparedStatement.setString(2, utilisateur.getTaille());
   preparedStatement.setString(3,utilisateur.getEspece());
     preparedStatement.setString(4, utilisateur.getType());
  preparedStatement.setString (5, utilisateur.getAge());
 preparedStatement.setString (6, utilisateur.getRegion());
            
   
  
  
  

         
            
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}