package config;

import java.sql.Connection;
import java.sql.DriverManager;


public class Conexion {
    Connection conexion;
    
    public Connection Conexion(){
        try{
            Class.forName("com.mysql.jdcb.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBAutoXpert?useSSL=false", "root", "admin");
        }catch(Exception e){
            e.printStackTrace();
        }
        return conexion;
    }
}
