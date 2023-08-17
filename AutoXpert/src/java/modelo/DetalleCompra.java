package modelo;

public class DetalleCompra{
	private int codigoDetalleCompra;
	private int codigoVehiculo;
	private int cantidadDetalleCompra;
	private double precioDetalleCompra;
	private int codigoCompra;

	public DetalleCompra(){
	}

	public DetalleCompra(int codigoDetalleCompra, int codigoVehiculo, int cantidadDetalleCompra, double precioDetalleCompra, int codigoCompra){
		this.codigoDetalleCompra = codigoDetalleCompra;
		this.codigoVehiculo = codigoVehiculo;
		this.cantidadDetalleCompra = cantidadDetalleCompra;
		this.precioDetalleCompra = precioDetalleCompra;
		this.codigoCompra = codigoCompra;
	}

    public int getCodigoDetalleCompra() {
        return codigoDetalleCompra;
    }

    public void setCodigoDetalleCompra(int codigoDetalleCompra) {
        this.codigoDetalleCompra = codigoDetalleCompra;
    }

    public int getCodigoVehiculo() {
        return codigoVehiculo;
    }

    public void setCodigoVehiculo(int codigoVehiculo) {
        this.codigoVehiculo = codigoVehiculo;
    }

    public int getCantidadDetalleCompra() {
        return cantidadDetalleCompra;
    }

    public void setCantidadDetalleCompra(int cantidadDetalleCompra) {
        this.cantidadDetalleCompra = cantidadDetalleCompra;
    }

    public double getPrecioDetalleCompra() {
        return precioDetalleCompra;
    }

    public void setPrecioDetalleCompra(double precioDetalleCompra) {
        this.precioDetalleCompra = precioDetalleCompra;
    }

    public int getCodigoCompra() {
        return codigoCompra;
    }

    public void setCodigoCompra(int codigoCompra) {
        this.codigoCompra = codigoCompra;
    }



}