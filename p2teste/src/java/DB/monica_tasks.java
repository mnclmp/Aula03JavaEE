/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;
import java.util.ArrayList;
import java.sql.*;
import WEB.MonicaDBListener;

/**
 *
 * @author or_mo
 */
public class monica_tasks {
    public static ArrayList<String> getTasks() throws Exception{
        ArrayList<String> list = new ArrayList<>();
        Connection con = MonicaDBListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(" select * from tasks");
        
        while(rs.next()){
            list.add(rs.getString("name"));
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }
    public static void addTask(String task_nome) throws Exception{
        Connection con = MonicaDBListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("insert into tasks values('"+ task_nome +"')");
        stmt.close();
        con.close();
    }
        public static void removeTask(String task_nome) throws Exception{
        Connection con = MonicaDBListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("delete from tasks where name = '"+ task_nome +"'");
        stmt.close();
        con.close();
    }
}
