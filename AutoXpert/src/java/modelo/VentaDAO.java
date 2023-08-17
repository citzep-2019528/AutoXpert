package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Carlos Manuel García Escobar 2022025 IN5AM Fecha de cración:
 * 20/07/203
 */
public class VentaDAO {
    
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int respuesta;
    
    
    /*Agregar Venta*/
        public int agregarVenta(Venta vn) {
        String sql = "INSERT INTO Venta(fechaVenta, horaVenta, totalVenta, estadoVenta, codigoEmpleado, codigoCliente) VALUES(?,?,?,?,?,?);";
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);

            ps.setDate(1, vn.getFechaVenta());
            ps.setString(2, vn.getHoraVenta());
            ps.setDouble(3, vn.getTotalVenta());
            ps.setBoolean(4, vn.isEstadoVenta());
            ps.setInt(5, vn.getCodigoEmpleado());
            ps.setInt(6, vn.getCodigoCliente());
            ps.executeUpdate();

        } catch (Exception e) {

        }
        return respuesta;
    }
        
    /*Editar Venta*/
            public int editarVenta(Venta vn){
        
        String sql = "UPDATE Venta SET fechaVenta = ?, horaVenta = ?, totalVenta = ?, "
                + "estadoVenta = ?, codigoEmpleado = ?, codigoCliente = ?, ";
        
        try{
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.setDate(1, vn.getFechaVenta());
            ps.setString(2, vn.getHoraVenta());
            ps.setDouble(3, vn.getTotalVenta());
            ps.setBoolean(4, vn.isEstadoVenta());
            ps.setInt(5, vn.getCodigoEmpleado());
            ps.setInt(6, vn.getCodigoCliente());
            
            ps.executeUpdate();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return respuesta;
        
    }
            
    /*Listar Venta*/   
    public List listarVenta(){
        List<Venta> listaVenta = new ArrayList<Venta>();
        String sql = "SELECT * FROM Venta";
        try{
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Venta vn = new Venta();
                
                vn.setCodigoVenta(rs.getInt(1));
                vn.setFechaVenta(rs.getDate(2));
                vn.setHoraVenta(rs.getString(3));
                vn.setTotalVenta(rs.getDouble(4));
                vn.setEstadoVenta(rs.getBoolean(5));
                vn.setCodigoEmpleado(rs.getInt(6));
                vn.setCodigoCliente(rs.getInt(7));
                
                listaVenta.add(vn);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return listaVenta;
    }
    

    /*Buscar Venta*/
    public Venta buscarVenta(int codigoVenta) {
        Venta vn = new Venta();
        String sql = "SELECT * FROM Venta WHERE codigoVenta = " + codigoVenta;

        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                vn.setCodigoVenta(rs.getInt(1));
                vn.setFechaVenta(rs.getDate(2));
                vn.setHoraVenta(rs.getString(3));
                vn.setTotalVenta(rs.getDouble(4));
                vn.setEstadoVenta(rs.getBoolean(5));
                vn.setCodigoEmpleado(rs.getInt(6));
                vn.setCodigoCliente(rs.getInt(7));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return vn;
    }
    
    /*Eliminar Venta*/
   public void eliminarVenta(int codigoVenta){
        String sql = "DELETE FROM Venta WHERE codigoVenta = " + codigoVenta;
        
        try{
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    
}