
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class TipoClienteDAO{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps; 
    ResultSet rs;
    int resp; 
    
    public List listar(){
        String sql = "select * from TipoCliente";
        List<TipoCliente> listaTipoCliente = new ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                TipoCliente tp = new TipoCliente();
                tp.setCodigoTipoCliente(rs.getInt(1));
                tp.setDescripcion(rs.getString(2));
                tp.setTipoCliente(rs.getString(3));;
                listaTipoCliente.add(tp);
            }     
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaTipoCliente;
    } 
     
    public int agregar(TipoCliente tp){
       String sql = "Insert into TipoCliente(tipoCliente, descripcion) values(?,?)";
       try{
           con = cn.Conexion();
           ps = con.prepareStatement(sql);
           ps.setString(1, tp.getTipoCliente());
           ps.setString(2, tp.getDescripcion());
           ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
        return resp;
    }
    
    public TipoCliente listarTipoCliente(int id){
        TipoCliente tp = new TipoCliente();
        String sql = "Select * from TipoCliente where codigoTipoCliente = "+ id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                tp.setCodigoTipoCliente(rs.getInt(2));
                tp.setTipoCliente(rs.getString(3));
                tp.setDescripcion(rs.getString(4));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return tp;
    }
 
    public int actualizar(TipoCliente tp){
        String sql = "Update TipoCliente set  tipoCliente = ?, descripcion = ? where codigoTipoCliente = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, tp.getTipoCliente());
            ps.setString(2, tp.getDescripcion());
            ps.setInt(3, tp.getCodigoTipoCliente());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    public void eliminar(int id){
        String sql = "delete from TipoCliente where codigoTipoCliente = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}

