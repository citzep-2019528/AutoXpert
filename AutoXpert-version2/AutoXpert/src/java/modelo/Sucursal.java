package modelo;


public class Sucursal {
    private int codigoSucursal;
    private String nombreSucursal;
    private String direccion;
    private String telefonoSucursal;
    private String correoSucursal;
    private boolean estadoSucursal;

    public Sucursal() {
    }

    public Sucursal(int codigoSucursal, String nombreSucursal, String direccion, String telefonoSucursal, String correoSucursal, boolean estadoSucursal) {
        this.codigoSucursal = codigoSucursal;
        this.nombreSucursal = nombreSucursal;
        this.direccion = direccion;
        this.telefonoSucursal = telefonoSucursal;
        this.correoSucursal = correoSucursal;
        this.estadoSucursal = estadoSucursal;
    }

    public int getCodigoSucursal() {
        return codigoSucursal;
    }

    public void setCodigoSucursal(int codigoSucursal) {
        this.codigoSucursal = codigoSucursal;
    }

    public String getNombreSucursal() {
        return nombreSucursal;
    }

    public void setNombreSucursal(String nombreSucursal) {
        this.nombreSucursal = nombreSucursal;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefonoSucursal() {
        return telefonoSucursal;
    }

    public void setTelefonoSucursal(String telefonoSucursal) {
        this.telefonoSucursal = telefonoSucursal;
    }

    public String getCorreoSucursal() {
        return correoSucursal;
    }

    public void setCorreoSucursal(String correoSucursal) {
        this.correoSucursal = correoSucursal;
    }

    public boolean getEstadoSucursal() {
        return estadoSucursal;
    }

    public void setEstadoSucursal(boolean estadoSucursal) {
        this.estadoSucursal = estadoSucursal;
    }

    @Override
    public String toString() {
        return codigoSucursal + ". " + nombreSucursal;
    }
    
    
    
}
