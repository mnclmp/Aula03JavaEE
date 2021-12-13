/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WEB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Web application lifecycle listener.
 *
 * @author or_mo
 */
public class MonicaDBListener implements ServletContextListener {
    
    public static final String CLASS_NAME = "org.sqlite.JDBC";
    public static final String URL = "jdbc:sqlite:bd_monica.db";
    public static Exception exception = null;
    
    public static Connection getConnection() throws SQLException{
        return DriverManager.getConnection(URL);
    }
    

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        
        try {
            Class.forName(CLASS_NAME);
            Connection con = getConnection();
            Statement stmt = con.createStatement();
            stmt.execute("CREATE TABLE IF NOT EXISTS monica_tasks("
                    + "id INTEGER PRIMARY KEY AUTOINCREMENT,"
                    + "title VARCHAR(100) NOT NULL,"
                    + "user VARCHAR(100) NOT NULL"
                    + ")");
            
        } catch (Exception e) {
            exception = e;
        }
    }
    
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
