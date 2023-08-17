package modelo;

public class DetalleVenta {

    // Variables con respecto a los parámetros que se encuentran en la base de datos de la entidad DetalleVenta.
    private int codigoDetalleVenta;
    private int cantidad;
    private int codigoVehiculo;
    private int codigoVenta;

    // Constructor vacío o sin parámetros.
    public DetalleVenta() {
    }

    // Constructor lleno o con parámetros.
    public DetalleVenta(int codigoDetalleVenta, int cantidad, int codigoVehiculo, int codigoVenta) {
        this.codigoDetalleVenta = codigoDetalleVenta;
        this.cantidad = cantidad;
        this.codigoVehiculo = codigoVehiculo;
        this.codigoVenta = codigoVenta;
    }

    // Getters y Setters de todas las variables de la clase DetalleVenta.

    public int getCodigoDetalleVenta() {
        return codigoDetalleVenta;
    }

    public void setCodigoDetalleVenta(int codigoDetalleVenta) {
        this.codigoDetalleVenta = codigoDetalleVenta;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getCodigoVehiculo() {
        return codigoVehiculo;
    }

    public void setCodigoVehiculo(int codigoVehiculo) {
        this.codigoVehiculo = codigoVehiculo;
    }

    public int getCodigoVenta() {
        return codigoVenta;
    }

    public void setCodigoVenta(int codigoVenta) {
        this.codigoVenta = codigoVenta;
    }

}