package modelo;

public class TipoCliente {
    private int codigoTipoCliente;
    private String tipoCliente; 
    private String descripcion; 
    private boolean estadoTipoCliente;

    public TipoCliente() {
    }

    public TipoCliente(int codigoTipoCliente, String tipoCliente, String descripcion) {
        this.codigoTipoCliente = codigoTipoCliente;
        this.tipoCliente = tipoCliente;
        this.descripcion = descripcion;
    }

    public int getCodigoTipoCliente() {
        return codigoTipoCliente;
    }

    public void setCodigoTipoCliente(int codigoTipoCliente) {
        this.codigoTipoCliente = codigoTipoCliente;
    }

    public String getTipoCliente() {
        return tipoCliente;
    }

    public void setTipoCliente(String tipoCliente) {
        this.tipoCliente = tipoCliente;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public boolean isEstadoTipoCliente() {
        return estadoTipoCliente;
    }

    public void setEstadoTipoCliente(boolean estadoTipoCliente) {
        this.estadoTipoCliente = estadoTipoCliente;
    }
    
}
