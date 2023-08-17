package modelo;

/**
 *
 * @author Joshua Elí Isaac Realiquez Sosa
 * 2019342
 * IN5AM
 * Fecha de creación:
 * 18/07/2023
 */
public class Vehiculo {
    private int codigoVehiculo;
    private String marca;
    private String modelo;
    private String color;
    private int cantidadPuertas;
    private int stock;
    private boolean estadoVehiculo;
    private int codigoTipoVehiculo;
    
    public Vehiculo(){}

    public Vehiculo(int codigoVehiculo, String marca, String modelo, String color, int cantidadPuertas, int stock, boolean estadoVehiculo, int codigoTipoVehiculo) {
        this.codigoVehiculo = codigoVehiculo;
        this.marca = marca;
        this.modelo = modelo;
        this.color = color;
        this.cantidadPuertas = cantidadPuertas;
        this.stock = stock;
        this.estadoVehiculo = estadoVehiculo;
        this.codigoTipoVehiculo = codigoTipoVehiculo;
    }

    public int getCodigoVehiculo() {
        return codigoVehiculo;
    }

    public void setCodigoVehiculo(int codigoVehiculo) {
        this.codigoVehiculo = codigoVehiculo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getCantidadPuertas() {
        return cantidadPuertas;
    }

    public void setCantidadPuertas(int cantidadPuertas) {
        this.cantidadPuertas = cantidadPuertas;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public boolean isEstadoVehiculo() {
        return estadoVehiculo;
    }

    public void setEstadoVehiculo(boolean estadoVehiculo) {
        this.estadoVehiculo = estadoVehiculo;
    }

    public int getCodigoTipoVehiculo() {
        return codigoTipoVehiculo;
    }

    public void setCodigoTipoVehiculo(int codigoTipoVehiculo) {
        this.codigoTipoVehiculo = codigoTipoVehiculo;
    }

    
    
    
    
}
