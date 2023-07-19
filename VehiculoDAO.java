package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Joshua Elí Isaac Realiquez Sosa 2019342 IN5AM Fecha de cración:
 * 18/07/203
 */
public class VehiculoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    /*Método para agregar*/
    public int agregarVehiculo(Vehiculo vh) {
        String sql = "INSERT INTO Vehiculo(marca, modelo, color, cantidadPuertas, stock, estadoVehiculo, codigoTipoVehiculo) VALUES(?,?,?,?,?,?,?);";
        try {
            con = cn.getConexion();
            ps = con.prepareCall(sql);

            ps.setString(1, vh.getMarca());
            ps.setString(2, vh.getModelo());
            ps.setString(3, vh.getColor());
            ps.setInt(4, vh.getCantidadPuertas());
            ps.setInt(5, vh.getStock());
            ps.setBoolean(6, vh.isEstadoVehiculo());
            ps.setInt(7, vh.getCodigoTipoVehiculo());

            ps.executeUpdate();

        } catch (Exception e) {

        }
        return resp;
    }
    
    
    /*Listar Vehiculos*/
    public List listar(){
        List<Vehiculo> listaVehiculo = new ArrayList<Vehiculo>();
        String sql = "SELECT * FROM Vehiculo";
        try{
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Vehiculo vh = new Vehiculo();
                
                vh.setCodigoVehiculo(rs.getInt(1));
                vh.setMarca(rs.getString(2));
                vh.setModelo(rs.getString(3));
                vh.setColor(rs.getString(4));
                vh.setCantidadPuertas(rs.getInt(5));
                vh.setStock(rs.getInt(6));
                vh.setEstadoVehiculo(rs.getBoolean(7));
                vh.setCodigoTipoVehiculo(rs.getInt(8));
                
                listaVehiculo.add(vh);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return listaVehiculo;
    }

    /*Listar vehiculo con id*/
    public Vehiculo listarCodigoVehiculo(int codigoVehiculo) {
        Vehiculo vh = new Vehiculo();
        String sql = "SELECT * FROM Vehiculo WHERE codigoVehiculo = " + codigoVehiculo;

        try {
            con = cn.getConexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                vh.setMarca(rs.getString(2));
                vh.setModelo(rs.getString(3));
                vh.setColor(rs.getString(4));
                vh.setCantidadPuertas(rs.getInt(5));
                vh.setStock(rs.getInt(6));
                vh.setEstadoVehiculo(rs.getBoolean(7));
                vh.setCodigoTipoVehiculo(rs.getInt(8));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return vh;
    }
    
    /* Modificar vehiculo*/
    public int editar(Vehiculo vh){
        
        String sql = "UPDATE Vehiculo SET marca = ?, modelo = ?, color = ?, "
                + "cantidadPuertas = ?, stock = ?, estadoVehiculo = ?, "
                + "codigoTipoVehiculo = ?";
        
        try{
            con = cn.getConexion();
            ps = con.prepareCall(sql);
            ps.setString(1, vh.getMarca());
            ps.setString(2, vh.getModelo());
            ps.setString(3, vh.getColor());
            ps.setInt(4, vh.getCantidadPuertas());
            ps.setInt(5, vh.getStock());
            ps.setBoolean(6, vh.isEstadoVehiculo());
            ps.setInt(7, vh.getCodigoTipoVehiculo());
            
            ps.executeUpdate();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return resp;
        
    }
    
    /* Eliminar vehiculo*/
    
    public void eliminar(int codigoVehiculo){
        String sql = "DELETE FROM Vehiculo WHERE codigoVehiculo = " + codigoVehiculo;
        
        try{
            con = cn.getConexion();
            ps = con.prepareCall(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

}
