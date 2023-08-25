/*
 *  Jonathan José García Juárez
 *  2019121
 *  IN5AM
 *  Fecha de creación
 *      18/07/2023
 */

package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProveedorDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    // listar
    public List listar(){
        String sql ="Select * from Proveedor";
        List<Proveedor> listaProveedor = new ArrayList();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Proveedor pro = new Proveedor();
                pro.setCodigoProveedor(rs.getInt(1));
                pro.setNombreProveedor(rs.getString(2));
                pro.setNitProveedor(rs.getString(3));
                pro.setTelefonoProveedor(rs.getString(4));
                pro.setDireccionProveedor(rs.getString(5));
                pro.setEstadoProveedor(rs.getBoolean(6));
                
                listaProveedor.add(pro);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaProveedor;    
    }
    
    // agregar
    public int agregar(Proveedor pro){
        String sql = "Insert into Proveedor (nombreProveedor, nitProveedor, telefonoProveedor, direccionProveedor, estadoProveedor) values (?, ?, ?, ?, ?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, pro.getNombreProveedor());
            ps.setString(2, pro.getNitProveedor());
            ps.setString(3, pro.getTelefonoProveedor());
            ps.setString(4, pro.getDireccionProveedor());
            ps.setBoolean(5, pro.getEstadoProveedor());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    //listar codigoProveedor
    public Proveedor listarCodigoProveedor(int id){
        Proveedor pro = new Proveedor();
        String sql = "Select * from Proveedor where codigoProveedor = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                pro.setNombreProveedor(rs.getString(2));
                pro.setNitProveedor(rs.getString(3));
                pro.setTelefonoProveedor(rs.getString(4));
                pro.setDireccionProveedor(rs.getString(5));
                pro.setEstadoProveedor(rs.getBoolean(6));               
            }
        }catch(Exception e){
            e.printStackTrace();
        }        
        return pro;
    }
    
    // editar
    public int editar(Proveedor pro){
        String sql = "update Proveedor set nombreProveedor = ?, nitProveedor = ?, telefonoProveedor = ?, direccionProveedor = ?, estadoProveedor = ? where codigoProveedor = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, pro.getNombreProveedor());
            ps.setString(2, pro.getNitProveedor());
            ps.setString(3, pro.getTelefonoProveedor());
            ps.setString(4, pro.getDireccionProveedor());
            ps.setBoolean(5, pro.getEstadoProveedor());
            ps.setInt(6, pro.getCodigoProveedor());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    // eliminar
    public void eliminar(int id){
        String sql = "delete from Proveedor where codigoProveedor = " +id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
