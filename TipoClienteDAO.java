package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TipoClienteDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    //Listar
    public List listar(){
        String sql = "select * from TipoCliente";
        List <TipoCliente> listaTipoCliente = new ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                TipoCliente tp = new TipoCliente();
                tp.setCodigoTipoCliente(rs.getInt(1));
                tp.setTipoCliente(rs.getString(2));
                tp.setDescripcion(rs.getString(3));
                listaTipoCliente.add(tp);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaTipoCliente;
    }
    
    //Agregar
    public int agregar (TipoCliente tc){
        String sql = "Insert into TipoCliente (tipoCliente, descripcion) values (?,?)";
    try{
        con = cn.Conexion();
        ps = con.prepareCall(sql);
        ps.setString(1, tc.getTipoCliente());
        ps.setString(2, tc.getDescripcion());
    }catch(Exception e){
        e.printStackTrace();
    }
    
    return resp;
    
    }
    
    //Buscar por código 
    public TipoCliente listaTipoCliente(int id){
        TipoCliente tc = new TipoCliente();
        String sql = "Select * from TipoCliente where codigoTipoCliente = " + id;
        try{
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                tc.setTipoCliente(rs.getString(1));
                tc.setDescripcion(rs.getString(2));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return tc;
    }
        
     //Editar 
    public int actualizar(TipoCliente tc){
        String sql = "Update TipoCliente set tipoCliente =?, descripcion =?" + "where codigoTipoCliente = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.setString(1, tc.getTipoCliente());
            ps.setString(2, tc.getDescripcion());
            ps.setInt(3, tc.getCodigoTipoCliente());
            ps.executeUpdate();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
   //Eliminar
    public void eliminar (int id){
        String sql = "Delete from TipoCliente where codigoTipoCliente = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
   
}