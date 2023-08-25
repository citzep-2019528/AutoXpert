/*
    Hans Alexander Juárez Cano
    2019128
    IN5AM
    Fecha de Creación: 20-07-2023
*/
package modelo;


public class Cliente {
    private int codigoCliente;
    private String nombres;
    private String apellidos;
    private String nit;
    private String telefonoCliente;
    private String direccionCliente;
    private String  correoCliente;
    private boolean estadoCliente;
    private int codigoTipoCliente;
    
    public Cliente(){
        
    }

    public Cliente(int codigoCliente, String nombres, String apellidos, String nit, String telefonoCliente, String direccionCliente, String correoCliente, boolean estadoCliente, int codigoTipoCliente) {
        this.codigoCliente = codigoCliente;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.nit = nit;
        this.telefonoCliente = telefonoCliente;
        this.direccionCliente = direccionCliente;
        this.correoCliente = correoCliente;
        this.estadoCliente = estadoCliente;
        this.codigoTipoCliente = codigoTipoCliente;
    }

    public int getCodigoCliente() {
        return codigoCliente;
    }

    public void setCodigoCliente(int codigoCliente) {
        this.codigoCliente = codigoCliente;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getTelefonoCliente() {
        return telefonoCliente;
    }

    public void setTelefonoCliente(String telefonoCliente) {
        this.telefonoCliente = telefonoCliente;
    }

    public String getDireccionCliente() {
        return direccionCliente;
    }

    public void setDireccionCliente(String direccionCliente) {
        this.direccionCliente = direccionCliente;
    }

    public String getCorreoCliente() {
        return correoCliente;
    }

    public void setCorreoCliente(String correoCliente) {
        this.correoCliente = correoCliente;
    }

    public boolean EstadoCliente() {
        return estadoCliente;
    }

    public void setEstadoCliente(boolean estadoCliente) {
        this.estadoCliente = estadoCliente;
    }

    public int getCodigoTipoCliente() {
        return codigoTipoCliente;
    }

    public void setCodigoTipoCliente(int codigoTipoCliente) {
        this.codigoTipoCliente = codigoTipoCliente;
    }
    
    
    
}
