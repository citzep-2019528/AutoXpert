package modelo;

import config.Conexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

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
    
    //Lista fotos
    public void listarImagen(int codigoVehiculo, HttpServletResponse response){
        String sql = "select * from Vehiculo where codigoVehiculo="+codigoVehiculo;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        response.setContentType("image/*");
        try{
            outputStream = response.getOutputStream();
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if(rs.next()){
                inputStream = rs.getBinaryStream("foto");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i = 0;
            while((i=bufferedInputStream.read())!=-1){
                bufferedOutputStream.write(i);
            }
        }catch(Exception e){
            e.printStackTrace();
        }

    }
    
    /*Método para agregar*/
    public int agregarVehiculo(Vehiculo vh) {
        String sql = "INSERT INTO Vehiculo(marca, modelo, color, cantidadPuertas, precio,stock, foto, estadoVehiculo, codigoTipoVehiculo) VALUES(?,?,?,?,?,?,?,?,?);";
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);

            ps.setString(1, vh.getMarca());
            ps.setString(2, vh.getModelo());
            ps.setString(3, vh.getColor());
            ps.setInt(4, vh.getCantidadPuertas());
            ps.setDouble(5, vh.getPrecio());
            ps.setInt(6, vh.getStock());
            ps.setBlob(7, vh.getImagen());
            ps.setBoolean(8, vh.isEstadoVehiculo());
            ps.setInt(9, vh.getCodigoTipoVehiculo());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
    
    //Listar
    public List listar(){
        List<Vehiculo> listaVehiculo = new ArrayList<Vehiculo>();
        String sql = "SELECT * FROM Vehiculo";
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Vehiculo vh = new Vehiculo();

                vh.setCodigoVehiculo(rs.getInt(1));
                vh.setMarca(rs.getString(2));
                vh.setModelo(rs.getString(3));
                vh.setColor(rs.getString(4));
                vh.setCantidadPuertas(rs.getInt(5));
                vh.setPrecio(rs.getDouble(6));
                vh.setStock(rs.getInt(7));
                vh.setImagen(rs.getBinaryStream(8));
                vh.setEstadoVehiculo(rs.getBoolean(9));
                vh.setCodigoTipoVehiculo(rs.getInt(10));
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
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                vh.setCodigoVehiculo(codigoVehiculo);
                vh.setMarca(rs.getString(2));
                vh.setModelo(rs.getString(3));
                vh.setColor(rs.getString(4));
                vh.setCantidadPuertas(rs.getInt(5));
                vh.setPrecio(rs.getDouble(6));
                vh.setStock(rs.getInt(7));
                vh.setImagen(rs.getBinaryStream(8));
                vh.setEstadoVehiculo(rs.getBoolean(9));
                vh.setCodigoTipoVehiculo(rs.getInt(10));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return vh;
    }

    /* Modificar vehiculo*/
    public int editar(Vehiculo vh) {

        String sql = "UPDATE Vehiculo SET marca = ?, modelo = ?, color = ?, "
                + "cantidadPuertas = ?, precio = ?, stock = ?, estadoVehiculo = ? ";

        if (vh.getImagen() != null) {
            sql += ", foto = ? ";
        }

        sql += "WHERE codigoVehiculo = ?";

        int numParametro = 8;
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.setString(1, vh.getMarca());
            ps.setString(2, vh.getModelo());
            ps.setString(3, vh.getColor());
            ps.setInt(4, vh.getCantidadPuertas());
            ps.setDouble(5, vh.getPrecio());
            ps.setInt(6, vh.getStock());
            ps.setBoolean(7, vh.isEstadoVehiculo());
            
            if (vh.getImagen() != null) {
                ps.setBinaryStream(numParametro, vh.getImagen());
                numParametro++;
            }
            
            ps.setInt(numParametro, vh.getCodigoVehiculo());
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return resp;
    }

    /* Eliminar vehiculo*/
    public void eliminar(int codigoVehiculo) {
        String sql = "DELETE FROM Vehiculo WHERE codigoVehiculo = " + codigoVehiculo;

        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    

}
