

package main;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnection 
{
   public static Connection getconn()
   {
               try {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
                  return con;
               }  catch (Exception e) {
                   return null;
               }

           }
    
}
