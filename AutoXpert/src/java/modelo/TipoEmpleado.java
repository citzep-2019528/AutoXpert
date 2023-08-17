/* Santiago Elisardo González Herrera 
   2022140
   IN5AM 
   Fecha de creación: 18/07/2023
   Fecha de modificación;
*/
package modelo;

public class TipoEmpleado {
    private int codigoTipoEmpleado;
    private String descripcion;
    private double sueldoBase;
    private double bonificacion;
    private double bonificacionEmpresa;

    public TipoEmpleado() {
    }

    public TipoEmpleado(int codigoTipoEmpleado, String descripcion, double sueldoBase, double bonificacion, double bonificacionEmpresa) {
        this.codigoTipoEmpleado = codigoTipoEmpleado;
        this.descripcion = descripcion;
        this.sueldoBase = sueldoBase;
        this.bonificacion = bonificacion;
        this.bonificacionEmpresa = bonificacionEmpresa;
    }

    public int getCodigoTipoEmpleado() {
        return codigoTipoEmpleado;
    }

    public void setCodigoTipoEmpleado(int codigoTipoEmpleado) {
        this.codigoTipoEmpleado = codigoTipoEmpleado;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getSueldoBase() {
        return sueldoBase;
    }

    public void setSueldoBase(double sueldoBase) {
        this.sueldoBase = sueldoBase;
    }

    public double getBonificacion() {
        return bonificacion;
    }

    public void setBonificacion(double bonificacion) {
        this.bonificacion = bonificacion;
    }

    public double getBonificacionEmpresa() {
        return bonificacionEmpresa;
    }

    public void setBonificacionEmpresa(double bonificacionEmpresa) {
        this.bonificacionEmpresa = bonificacionEmpresa;
    }
    
    
}
