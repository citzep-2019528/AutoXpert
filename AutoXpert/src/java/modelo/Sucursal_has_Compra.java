/*
    Manuel Eduardo González Avalos
    2021391
    IN5AM
    Fecha de Creación: 18-07-2023
*/
package modelo; 

public class Sucursal_has_Compra {
    private int Sucursal_codigoSucursal;
    private int codigoSucursal;
    private int codigoCompra;

    public Sucursal_has_Compra() {
    }

    public Sucursal_has_Compra(int Sucursal_codigoSucursal, int codigoSucursal, int codigoCompra) {
        this.Sucursal_codigoSucursal = Sucursal_codigoSucursal;
        this.codigoSucursal = codigoSucursal;
        this.codigoCompra = codigoCompra;
    }

    public int getSucursal_codigoSucursal() {
        return Sucursal_codigoSucursal;
    }

    public void setSucursal_codigoSucursal(int Sucursal_codigoSucursal) {
        this.Sucursal_codigoSucursal = Sucursal_codigoSucursal;
    }
    
    

    public int getCodigoSucursal() {
        return codigoSucursal;
    }

    public void setCodigoSucursal(int codigoSucursal) {
        this.codigoSucursal = codigoSucursal;
    }

    public int getCodigoCompra() {
        return codigoCompra;
    }

    public void setCodigoCompra(int codigoCompra) {
        this.codigoCompra = codigoCompra;
    }
    
    
}
