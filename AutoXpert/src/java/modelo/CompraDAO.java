/*
    Manuel Eduardo González Avalos
    2021391
    IN5AM
    Fecha de Creación: 18-07-2023
*/
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Compra;

public class CompraDAO {
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement PS;
    ResultSet RS;
    int resp;
    
    public List listar() {
        String sql = "SELECT * FROM Compra";
        List<Compra> listaCompra = new ArrayList<>();
        try{
            con = cn.Conexion();
            PS = con.prepareStatement(sql);
            RS = PS.executeQuery();
            while(RS.next()){
                Compra compra = new Compra();
                compra.setNumeroCompra(RS.getInt(1));
                compra.setFechaCompra(RS.getDate(2));
                compra.setTotalCompra(RS.getDouble(3));
                compra.setCodigoProveedor(RS.getInt(4));
            }
        }catch(Exception SQL){
            SQL.printStackTrace();
        }
        return listaCompra;
    }
    
    public int agregar(Compra compra){
        String sql = "INSERT INTO Compra(numeroCompra, fechaCompra, totalCompra, codigoProveedor) VALUES"
                + "(?, ?, ?, ?)";
        try{
            con = cn.Conexion();
            PS = con.prepareStatement(sql);
            PS.setInt(1, compra.getNumeroCompra());
            PS.setDate(2, compra.getFechaCompra());
            PS.setDouble(3, compra.getTotalCompra());
            PS.setInt(4, compra.getCodigoProveedor());
            PS.executeUpdate();
        }catch(Exception SQL){
            SQL.printStackTrace();
        }
        return resp;
    }
    
    public Compra listarCodigoCompra(int ID) {
        Compra compra = new Compra();
        String sql = "SELECT * FROM Compra WHERE codigoCompra = " + ID;
        try{
            con = cn.Conexion();
            PS = con.prepareStatement(sql);
            RS = PS.executeQuery();
            while(RS.next()){
                compra.setNumeroCompra(RS.getInt(2));
                compra.setFechaCompra(RS.getDate(3));
                compra.setTotalCompra(RS.getDouble(4));
                compra.setCodigoProveedor(RS.getInt(5));
            }
        }catch(Exception SQL){
            SQL.printStackTrace();
        }
        return compra;
    }
    
    public int actualizar(Compra compra) {
        String sql = "UPDATE Compra SET numeroCompra = ?, fechaCompra = ?, totalCompra = ?"
                + "WHERE codigoCompra = ?";
        try{
            con = cn.Conexion();
            PS = con.prepareStatement(sql);
            PS.setInt(1, compra.getNumeroCompra());
            PS.setDate(2, compra.getFechaCompra());
            PS.setDouble(3, compra.getTotalCompra());
            PS.setInt(4, compra.getCodigoCompra());
            PS.executeUpdate();
        }catch(Exception SQL){
        SQL.printStackTrace();
    }
        return resp;
    }
    
    public void eliminar(int ID) {
        String sql = "DELETE FROM Compra WHERE codigoCompra =" + ID;
        try{
            con = cn.Conexion();
            PS = con.prepareStatement(sql);
            PS.executeQuery();
        }catch(Exception SQL){
            SQL.printStackTrace();
        }
    }
}
