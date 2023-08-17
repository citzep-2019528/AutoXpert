package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ArrayList;
import java.sql.List;

public class DetalleCompraDAO{
	Conexion cn = new Conexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	int resp;

	public List listar(){
		String sql = "Select * from detalleCompra";
		List<DetalleCompra> listaDetalleCompra = new ArrayList<>();
		try{
			con = cn.Conexion();
			ps = con.preparedStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				DetalleCompra dc = new DetalleCompra();
				dc.setCodigoDetalleCompra(rs.getInt(1));
				dc.setCodigoVehiculo(rs.getInt(2));
				dc.setCantidadDetalleCompra(rs.getInt(3));
				dc.setPrecioDetalleCompra(rs.getDouble(4));
				dc.setCodigoCompra(rs.getInt(5));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return listaDetalleCompra;
	}

	public int agregar(DetalleCompra detc){
		String sql = "insert into DetalleCompra (codigoVehiculo,  cantidadDetalleCompra, precioDetalleCompra, codigoCompra ) values (?,?,?,?)";
		try{
			con = cn.Conexion();
			ps = con.preparedStatement(sql);
			ps.setCodigoDetalleCompra(1, detc.getCodigoVehiculo);
			ps.setCantidadDetalleCompra(2, detc.getCantidadDetalleCompra);
			ps.setPrecioDetalleCompra(3, detc.getPrecioDetalleCompra);
			ps.setCodigoCompra(4, detc.setCodigoCompra);
		} catch (Exception e){
			e.printStackTrace();
		}
		return resp;
	}

	public DetalleCompra listarCodigoDetalleCompra(int id){
		DetalleCompra detc = new DetalleCompra();
		String sql = "Select * from DetalleCompra where codigoDetalleCompra = " + id;
		try {
			con = cn.Conexion();
			ps = con.preparedStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				detc.setCodigoVehiculo(rs.getInt(2));
				detc.setCantidadDetalleCompra(rs.getInt(3));
				detc.setPrecioDetalleCompra(rs.getDouble(4));
				detc.setCodigoCompra(rs.getInt(5));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return detc;
	}

	public int actualizar(DetalleCompra detc){
		String sql = "update detalleCompra set codigoDetalleCompra = ?, codigoVehiculo = ?, cantidadDetalleCompra = ? , precioDetalleCompra = ?, codigoCompra = ?" + "where codigoDetalleCompra = ?";
		try{
			con = cn.Conexion();
			ps = con.preparedStatement(sql);
			ps.setInt(1, detc.getCodigoDetalleCompra());
			ps.setInt(2, detc.getCodigoVehiculo());
			ps.setInt(3, detc.getCantidadDetalleCompra());
			ps.setDouble(4, detc.getPrecioDetalleCompra());
			ps.setInt(5, detc.getCodigoCompra());
			ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return resp;
	}

	public void eliminar(int id){
		String sql = "delete from DetalleCompra where codigoDetalleCompra = " + id;
		try{
			con.cn.Conexion();
			ps = con.preparedStatement(sql);
			ps.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}