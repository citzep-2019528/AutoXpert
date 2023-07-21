/* Santiago Elisardo González Herrera 
   2022140
   IN5AM 
   Fecha de creación: 18/07/2023
   Fecha de modificación;
 */
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TipoEmpleadoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    //Listar
    public List listar() {
        String sql = "select * from TipoCliente";
        List<TipoEmpleado> listaTipoEmpleado = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                TipoEmpleado te = new TipoEmpleado();
                te.setCodigoTipoEmpleado(rs.getInt(1));
                te.setDescripcion(rs.getString(2));
                te.setSueldoBase(rs.getDouble(3));
                te.setBonificacion(rs.getDouble(4));
                te.setBonificacionEmpresa(rs.getDouble(5));
                listaTipoEmpleado.add(te);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaTipoEmpleado;
    }

    //Agregar
    public int agregar(TipoEmpleado te) {
        String sql = "Insert into TipoCliente (descripcion, sueldoBase, bonificacion, bonificacionEmpresa) values (?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.setString(1, te.getDescripcion());
            ps.setDouble(2, te.getSueldoBase());
            ps.setDouble(3, te.getBonificacion());
            ps.setDouble(4, te.getBonificacionEmpresa());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;

    }

    //Buscar por código
    public TipoEmpleado listaTipoEmpleado(int id) {
        TipoEmpleado te = new TipoEmpleado();
        String sql = "Select * from TipoEmpleado where codigoTipoEmpleado = " + id;
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                te.setDescripcion(rs.getString(2));
                te.setSueldoBase(rs.getDouble(3));
                te.setBonificacion(rs.getDouble(4));
                te.setBonificacionEmpresa(rs.getDouble(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return te;
    }

    //Editar 
    public int actualizar(TipoEmpleado te) {
        String sql = "Update TipoEmpleado set descripcion =?, sueldoBase =?, bonificacion =?, bonificacionEmpresa =?" + "where codigoTipoEmpleado = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.setString(1, te.getDescripcion());
            ps.setDouble(2, te.getSueldoBase());
            ps.setDouble(3, te.getBonificacion());
            ps.setDouble(4, te.getBonificacionEmpresa());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

    //Eliminar
    public void eliminar(int id) {
        String sql = "Delete from TipoEmpleado where codigoTipoEmpleado = " + id;
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
