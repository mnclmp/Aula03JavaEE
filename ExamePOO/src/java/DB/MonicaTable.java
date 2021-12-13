/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import WEB.MonicaDBListener;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author or_mo
 */
public class MonicaTable {
     public static ArrayList<String> getTable() throws Exception{
        ArrayList<String> list = new ArrayList<>();
        Connection con = MonicaDBListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(" SELECT user FROM monica_users");
        
        while(rs.next()){
            list.add(rs.getString("user"));
        }

        rs.close();
        stmt.close();
        con.close();
        return list;
    }
     public static void addUser(String add_user, String usuario) throws SQLException{
        Connection con = MonicaDBListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("INSERT INTO monica_users VALUES (null, '"+add_user+"', '"+usuario+"')");
        stmt.close();
        con.close();
        
    }
    
    public static void allUsers(String all_user) throws SQLException{
        Connection con = MonicaDBListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("SELECT * '"+all_user+"'");
        stmt.close();
        con.close();
        
    }
    
}
   
