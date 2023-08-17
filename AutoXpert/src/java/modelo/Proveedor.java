/*
 *  Jonathan José García Juárez
 *  2019121
 *  IN5AM
 *  Fecha de creación:
 *      18/07/2023
 */

package modelo;

public class Proveedor {
    private int codigoProveedor;
    private String nombreProveedor;
    private String nitProveedor;
    private String telefonoProveedor;
    private String direccionProveedor;
    private Boolean estadoProveedor;

    public Proveedor() {
    }

    public Proveedor(int codigoProveedor, String nombreProveedor, String nitProveedor, String telefonoProveedor, String direccionProveedor, Boolean estadoProveedor) {
        this.codigoProveedor = codigoProveedor;
        this.nombreProveedor = nombreProveedor;
        this.nitProveedor = nitProveedor;
        this.telefonoProveedor = telefonoProveedor;
        this.direccionProveedor = direccionProveedor;
        this.estadoProveedor = estadoProveedor;
    }

    public int getCodigoProveedor() {
        return codigoProveedor;
    }

    public void setCodigoProveedor(int codigoProveedor) {
        this.codigoProveedor = codigoProveedor;
    }

    public String getNombreProveedor() {
        return nombreProveedor;
    }

    public void setNombreProveedor(String nombreProveedor) {
        this.nombreProveedor = nombreProveedor;
    }

    public String getNitProveedor() {
        return nitProveedor;
    }

    public void setNitProveedor(String nitProveedor) {
        this.nitProveedor = nitProveedor;
    }

    public String getTelefonoProveedor() {
        return telefonoProveedor;
    }

    public void setTelefonoProveedor(String telefonoProveedor) {
        this.telefonoProveedor = telefonoProveedor;
    }

    public String getDireccionProveedor() {
        return direccionProveedor;
    }

    public void setDireccionProveedor(String direccionProveedor) {
        this.direccionProveedor = direccionProveedor;
    }

    public Boolean getEstadoProveedor() {
        return estadoProveedor;
    }

    public void setEstadoProveedor(Boolean estadoProveedor) {
        this.estadoProveedor = estadoProveedor;
    }
}
