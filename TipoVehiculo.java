
package modelo;


public class TipoVehiculo {
    private int codigoTipoVehiculo;
    private String categoria;
    private String descripcion;

    public TipoVehiculo() {
    }

    public TipoVehiculo(int codigoTipoVehiculo, String categoria, String descripcion) {
        this.codigoTipoVehiculo = codigoTipoVehiculo;
        this.categoria = categoria;
        this.descripcion = descripcion;
    }

    public int getCodigoTipoVehiculo() {
        return codigoTipoVehiculo;
    }

    public void setCodigoTipoVehiculo(int codigoTipoVehiculo) {
        this.codigoTipoVehiculo = codigoTipoVehiculo;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

   
    
}
