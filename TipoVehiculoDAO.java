
package Modelo;


import DB.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class TipoVehiculoDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps; 
    ResultSet rs;
    int resp;
}

// Listar
public List listar(){

}