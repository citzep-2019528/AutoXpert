package modelo;

import java.sql.Date;
/**
 *
 * @author Carlos Manuel García Escobar 2022025 IN5AM Fecha de cración:
 * 19/07/203
 */
public class Venta {
    private int codigoVenta;
    private Date fechaVenta;
    private String horaVenta;
    private double totalVenta;
    private boolean estadoVenta;
    private int codigoEmpleado;
    private int codigoCliente;

    public Venta() {
    }

    public Venta(int codigoVenta, Date fechaVenta, String horaVenta, double totalVenta, boolean estadoVenta, int codigoEmpleado, int codigoCliente) {
        this.codigoVenta = codigoVenta;
        this.fechaVenta = fechaVenta;
        this.horaVenta = horaVenta;
        this.totalVenta = totalVenta;
        this.estadoVenta = estadoVenta;
        this.codigoEmpleado = codigoEmpleado;
        this.codigoCliente = codigoCliente;
    }

    public int getCodigoVenta() {
        return codigoVenta;
    }

    public void setCodigoVenta(int codigoVenta) {
        this.codigoVenta = codigoVenta;
    }

    public Date getFechaVenta() {
        return fechaVenta;
    }

    public void setFechaVenta(Date fechaVenta) {
        this.fechaVenta = fechaVenta;
    }

    public String getHoraVenta() {
        return horaVenta;
    }

    public void setHoraVenta(String horaVenta) {
        this.horaVenta = horaVenta;
    }

    public double getTotalVenta() {
        return totalVenta;
    }

    public void setTotalVenta(double totalVenta) {
        this.totalVenta = totalVenta;
    }

    public boolean isEstadoVenta() {
        return estadoVenta;
    }

    public void setEstadoVenta(boolean estadoVenta) {
        this.estadoVenta = estadoVenta;
    }

    public int getCodigoEmpleado() {
        return codigoEmpleado;
    }

    public void setCodigoEmpleado(int codigoEmpleado) {
        this.codigoEmpleado = codigoEmpleado;
    }

    public int getCodigoCliente() {
        return codigoCliente;
    }

    public void setCodigoCliente(int codigoCliente) {
        this.codigoCliente = codigoCliente;
    }
    
    
    
}
