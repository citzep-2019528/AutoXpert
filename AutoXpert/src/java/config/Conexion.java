package config;

import java.sql.Connection;
import java.sql.DriverManager;


public class Conexion {
    Connection conexion;
    
    public Connection Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBAutoXpert?useSSL=false", "root", "admin26");
            //conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBAutoXpert?useSSL=false", "root", "root");
            //--conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBAutoXpert?useSSL=false", "realiquez", "admin");
//            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBAutoXpert?useSSL=false", "Kinal", "admin");
//            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBAutoXpert?useSSL=false", "root", "admin");
        }catch(Exception e){
            e.printStackTrace();
        }
        return conexion;
    }
}
