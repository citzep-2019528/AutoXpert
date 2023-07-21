/*
    Hans Alexander Juárez Cano
    2019128
    IN5AM
    Fecha de Creación: 20-07-2023
*/
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ClienteDAO {
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement PS;
    ResultSet RS;
    int resp;
    
    public List listar() {
        String sql = "SELECT * FROM Cliente";
        List<Cliente> listaCliente = new ArrayList<>();
        try{
            con = cn.Conexion();
            PS = con.prepareStatement(sql);
            RS = PS.executeQuery();
            while(RS.next()){
                Cliente cliente = new Cliente();
                cliente.setNombres(RS.getString(1));
                cliente.setApellidos(RS.getString(2));
                cliente.setNit(RS.getString(3));
                cliente.setTelefonoCliente(RS.getString(4));
                cliente.setDireccionCliente(RS.getString(5));
                cliente.setCorreoCliente(RS.getString(6));
                cliente.setEstadoCliente(RS.getBoolean(7));
                cliente.setCodigoCliente(RS.getInt(8));
           }
        }catch(Exception SQL){
            SQL.printStackTrace();
        }
        return listaCliente;
    }
    
    public int agregar(Cliente cliente){
        String sql = "INSERT INTO Cliente(nombres, apellidos, nit,telefonoCliente, direccionCliente, correoCliente, estadoCliente, codigoTipoCliente) VALUES"
                + "(?,?,?,?,?,?,?,?)";
        try{
            con = cn.Conexion();
            PS = con.prepareStatement(sql);
            PS.setString(1, cliente.getNombres());
            PS.setString(2, cliente.getApellidos());
            PS.setString(3, cliente.getNit());
            PS.setString(4, cliente.getTelefonoCliente());
            PS.setString(5, cliente.getDireccionCliente());
            PS.setString(6, cliente.getCorreoCliente());
            PS.setBoolean(7, cliente.EstadoCliente());
            PS.setInt(8, cliente.getCodigoTipoCliente());
            PS.executeUpdate();
        }catch(Exception SQL){
            SQL.printStackTrace();
        }
         return resp;
    }
    
    public Cliente listarCodigoCliente(int id){
        Cliente cliente = new Cliente();
        String sql = "SELECT * FROM Cliente WHERE codigoCliente = "+ id;
        try{
            con = cn.Conexion();
            PS = con.prepareStatement(sql);
            RS = PS.executeQuery();
            while(RS.next()){
                cliente.setNombres(RS.getString(1));
                cliente.setApellidos(RS.getString(2));
                cliente.setNit(RS.getString(3));
                cliente.setTelefonoCliente(RS.getString(4));
                cliente.setDireccionCliente(RS.getString(5));
                cliente.setCorreoCliente(RS.getString(6));
                cliente.setEstadoCliente(RS.getBoolean(7));
                cliente.setCodigoCliente(RS.getInt(8));
            }
        }catch(Exception SQL){
            SQL.printStackTrace();
        }
        return cliente;
    }
    
        public void eliminar(int id) {
        String sql = "DELETE FROM Cliente WHERE codigoCliente =" + id;
        try{
            con = cn.Conexion();
            PS = con.prepareStatement(sql);
            PS.executeQuery();
        }catch(Exception SQL){
            SQL.printStackTrace();
        }
    }
        
    public int actualizar(Cliente cliente){
        String sql = "UPDATE Cliente set nombres = ?, apellidos = ?, nit = ?, telefonoCliente = ?, direccionCliente = ?, correoCliente = ?"
                    + "WHERE codigoCliente = ?";
        try{
            con = cn.Conexion();
            PS = con.prepareStatement(sql);
            PS.setString(1, cliente.getNombres());
            PS.setString(2, cliente.getApellidos());
            PS.setString(3, cliente.getNit());
            PS.setString(4, cliente.getTelefonoCliente());
            PS.setString(5, cliente.getDireccionCliente());
            PS.setString(6, cliente.getCorreoCliente());
            PS.setBoolean(7, cliente.EstadoCliente());
            PS.setInt(8, cliente.getCodigoTipoCliente());
            PS.executeUpdate();
        }catch(Exception SQL){
        SQL.printStackTrace();
    }
            return resp; 
    }
    
  
}
