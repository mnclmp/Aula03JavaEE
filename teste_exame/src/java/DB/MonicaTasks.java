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
public class MonicaTasks {
     public static ArrayList<String> getTasks() throws Exception{
        ArrayList<String> list = new ArrayList<>();
        Connection con = MonicaDBListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(" SELECT title FROM monica_tasks");
        
        while(rs.next()){
            list.add(rs.getString("title"));
        }

        rs.close();
        stmt.close();
        con.close();
        return list;
    }
     public static void addTask(String task_name, String usuario) throws SQLException{
        Connection con = MonicaDBListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("INSERT INTO monica_tasks VALUES (null, '"+task_name+"', '"+usuario+"')");
        stmt.close();
        con.close();
        
    }
    
    public static void removeTask(String task_name) throws SQLException{
        Connection con = MonicaDBListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("DELETE FROM monica_tasks WHERE title = '"+task_name+"'");
        stmt.close();
        con.close();
        
    }
    
}
