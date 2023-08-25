/*
    Manuel Eduardo González Avalos
    2021391
    IN5AM
    Fecha de Creación: 18-07-2023
*/
package modelo;

import java.sql.Date;

public class Compra {
    private int codigoCompra;
    private int numeroCompra;
    private Date fechaCompra;
    private Double totalCompra;
    private int codigoProveedor;

    public Compra() {
    }

    public Compra(int codigoCompra, int numeroCompra, Date fechaCompra, Double totalCompra, int codigoProveedor) {
        this.codigoCompra = codigoCompra;
        this.numeroCompra = numeroCompra;
        this.fechaCompra = fechaCompra;
        this.totalCompra = totalCompra;
        this.codigoProveedor = codigoProveedor;
    }

    public int getCodigoCompra() {
        return codigoCompra;
    }

    public void setCodigoCompra(int codigoCompra) {
        this.codigoCompra = codigoCompra;
    }

    public int getNumeroCompra() {
        return numeroCompra;
    }

    public void setNumeroCompra(int numeroCompra) {
        this.numeroCompra = numeroCompra;
    }

    public Date getFechaCompra() {
        return fechaCompra;
    }

    public void setFechaCompra(Date fechaCompra) {
        this.fechaCompra = fechaCompra;
    }

    public Double getTotalCompra() {
        return totalCompra;
    }

    public void setTotalCompra(Double totalCompra) {
        this.totalCompra = totalCompra;
    }

    public int getCodigoProveedor() {
        return codigoProveedor;
    }

    public void setCodigoProveedor(int codigoProveedor) {
        this.codigoProveedor = codigoProveedor;
    }
}
