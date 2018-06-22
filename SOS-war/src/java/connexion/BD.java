/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package connexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class BD
{
    Connection cnt=null;
    
    public static Connection sqlConnect()
    {
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection cnt=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:8889/sos","root","root");
        return cnt;
    }catch(ClassNotFoundException | SQLException e)
    {
        
        return null;
    }
    }

    Connection cnt() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
