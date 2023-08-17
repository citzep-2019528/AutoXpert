package modelo;


import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class SucursalDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
 // SPListar   
    public List listar(){
        String sql = "select * from Sucursal";
        List <Sucursal> listaSucursal = new ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Sucursal  su = new Sucursal();
                su.setCodigoSucursal(rs.getInt(1));
                su.setNombreSucursal(rs.getString(2));
                su.setDireccion(rs.getString(3));
                su.setTelefonoSucursal(rs.getString(4));
                su.setCorreoSucursal(rs.getString(4));
                su.setEstadoSucursal(rs.getBoolean(5));
                listaSucursal.add(su);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaSucursal;
    }
    // SP Agregar
    public int agregar(Sucursal sc){
        String sql = "Insert into Sucursal (nombreSucursal, direccion, telefonoSucursal, correoSucursal, estadoSucursal(?, ?, ?, ?, ?))";
        try{
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.setString(1, sc.getNombreSucursal());
            ps.setString(2, sc.getDireccion());
            ps.setString(3, sc.getTelefonoSucursal());
            ps.setString(4, sc.getCorreoSucursal());
            ps.setBoolean(5, sc.getEstadoSucursal());
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return resp;
    }
    
    //Buscar
    public Sucursal listaCodigoSucursal(int id){
        Sucursal su = new Sucursal();
        String sql = "Select * from Sucursal where codigoSucursal = " +id;
        try{
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                su.setNombreSucursal(rs.getString(2));
                su.setDireccion(rs.getString(3));
                su.setTelefonoSucursal(rs.getString(4));
                su.setCorreoSucursal(rs.getString(5));
                su.setEstadoSucursal(rs.getBoolean(6));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return su;
    }
    //SPEditar
    public int  actualizar(Sucursal su){
        String sql = "Update Sucursal set nombreSucursal =?, direccion =?, telefonoSucursal =?, correoSucursal =?, estadoSucursal =?" + "where codigoSucursal = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.setString(1, su.getNombreSucursal());
            ps.setString(2, su.getDireccion());
            ps.setString(3, su.getTelefonoSucursal());
            ps.setString(4, su.getCorreoSucursal());
            ps.setBoolean(5, su.getEstadoSucursal());
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return resp;
    }
    
    //Eliminar
    public void eliminar (int id){
        String sql = "Delete from Sucursal where codigoSucursal = " +id;
        try{
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    
    
}
