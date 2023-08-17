package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DetalleVentaDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    // Método Listar
    public List listar() {
        String sql = "select * from DetalleVenta";
        List<DetalleVenta> listaDetalleVenta = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                DetalleVenta em = new DetalleVenta();
                em.setCodigoDetalleVenta(rs.getInt(1));
                em.setCantidad(rs.getInt(2));
                em.setCodigoVehiculo(rs.getInt(3));
                em.setCodigoVenta(rs.getInt(4));
                listaDetalleVenta.add(em);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaDetalleVenta;
    }

    // Método Agregar
    public int agregar(DetalleVenta dv) {
        String sql = "insert into DetalleVenta (cantidad, codigoVehiculo, codigoVenta) values(?, ?, ?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, dv.getCantidad());
            ps.setInt(2, dv.getCodigoVehiculo());
            ps.setInt(3, dv.getCodigoVenta());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

    // Método Buscar por código
    public DetalleVenta listarCodigoDetalleVenta(int id) {
        DetalleVenta dv = new DetalleVenta();
        String sql = "select * from DetalleVenta where codigoDetalleVenta = " + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                dv.setCantidad(rs.getInt(2));
                dv.setCodigoVehiculo(rs.getInt(3));
                dv.setCodigoVenta(rs.getInt(4));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dv;
    }

    // Método Editar
    public int actualizar(DetalleVenta dv) {
        String sql = "update DetalleVenta set cantidad = ?;"
                + "where codigoDetalleVenta = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, dv.getCantidad());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

    // Método Eliminar
    public void eliminar(int id) {
        String sql = "delete from DetalleVenta where codigoDetalleVenta = " + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}