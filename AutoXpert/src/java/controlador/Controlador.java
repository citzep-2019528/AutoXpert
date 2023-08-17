/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Cliente;
import modelo.ClienteDAO;
import modelo.Compra;
import modelo.CompraDAO;
import modelo.DetalleCompraDAO;
import modelo.DetalleVenta;
import modelo.DetalleVentaDAO;
import modelo.Empleado;
import modelo.EmpleadoDAO;
import modelo.Proveedor;
import modelo.ProveedorDAO;
import modelo.Sucursal;
import modelo.SucursalDAO;
import modelo.Sucursal_has_Compra;
import modelo.Sucursal_has_CompraDAO;
import modelo.TipoEmpleado;
import modelo.TipoEmpleadoDAO;
import modelo.Vehiculo;
import modelo.VehiculoDAO;
import modelo.Venta;
import modelo.VentaDAO;

/**
 *
 * @author DELL
 */
public class Controlador extends HttpServlet {

    Empleado empleado = new Empleado();
    EmpleadoDAO empleadoDao = new EmpleadoDAO();
    Vehiculo vehiculo = new Vehiculo();
    VehiculoDAO vehiculoDao = new VehiculoDAO();
    Proveedor proveedor = new Proveedor();
    ProveedorDAO proveedorDao = new ProveedorDAO();
    int codEmpleado;
    Sucursal sucursal = new Sucursal();
    SucursalDAO sucursalDao = new SucursalDAO();
    Compra compra = new Compra();
    CompraDAO compraDao = new CompraDAO();
    Sucursal_has_Compra sucursal_compra = new Sucursal_has_Compra();
    Sucursal_has_CompraDAO sucursal_compraDao = new Sucursal_has_CompraDAO();
    TipoEmpleado tipoempleado = new TipoEmpleado();
    TipoEmpleadoDAO tipoEmpleadoDao = new TipoEmpleadoDAO();
    DetalleVenta detalleVenta = new DetalleVenta();
    DetalleVentaDAO detalleVentaDao = new DetalleVentaDAO();
    DetalleCompraDAO detalleCompraDao = new DetalleCompraDAO();
     Venta venta = new Venta();
    VentaDAO ventaDao =  new VentaDAO();
    Cliente cliente = new Cliente();
    ClienteDAO clienteDao = new ClienteDAO();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        } else if (menu.equals("Empleado")) {
            switch (accion) {
                case "Listar":
                    List listaEmpleados = empleadoDao.listar();
                    request.setAttribute("empleados", listaEmpleados);
                    break;
                case "Agregar":
                    break;
                case "Editar":
                    break;
                case "Actualizar":
                    break;
                case "Eliminar":
                    break;
            }
            request.getRequestDispatcher("Empleado.jsp").forward(request, response);
            //Sucursal
        } else if (menu.equals("Sucursal")) {
            switch (accion) {
                case "Listar":
                    List listaSucursales = sucursalDao.listar();
                    request.setAttribute("sucursales", listaSucursales);
                    break;
            }
            request.getRequestDispatcher("Sucursal.jsp").forward(request, response);
        } else if (menu.equals("Vehiculo")) {
            switch (accion) {
                case "Listar":
                    List listaVehiculos = vehiculoDao.listar();
                    request.setAttribute("vehiculos", listaVehiculos);//Key-Value para meter los datos en el jsp.
                    break;
                case "Agregar":
                    break;
                case "Editar":
                    break;
                case "Actualizar":
                    break;
                case "Eliminar":
                    break;
            }
            request.getRequestDispatcher("Vehiculo.jsp").forward(request, response);
        } else if (menu.equals("Proveedor")) {
            switch (accion) {
                case "Listar":
                    List listaProveedor = proveedorDao.listar();
                    request.setAttribute("proveedores", listaProveedor);
                    break;
                case "Agregar":
                    break;
                case "Editar":
                    break;
                case "Actualizar":
                    break;
                case "Eliminar":
                    break;
            }
            request.getRequestDispatcher("Proveedor.jsp").forward(request, response);
        } else if (menu.equals("Compra")) {
            switch (accion) {
                case "Listar":
                    List listaCompra = compraDao.listar();
                    request.setAttribute("compras", listaCompra);
                    break;
                case "Agregar":
                    break;
                case "Editar":
                    break;
                case "Actualizar":
                    break;
                case "Eliminar":
                    break;
            }
            request.getRequestDispatcher("Compra.jsp").forward(request, response);
        } else if (menu.equals("Sucursal_has_Compra")) {
            switch (accion) {
                case "Listar":
                    List listaSucursalCompra = sucursal_compraDao.listar();
                    request.setAttribute("sucursales_has_compras", listaSucursalCompra);
                    break;
                case "Agregar":
                    break;
                case "Editar":
                    break;
                case "Actualizar":
                    break;
                case "Eliminar":
                    break;
            }
            request.getRequestDispatcher("Sucursal_has_Compra.jsp").forward(request, response);
        } else if (menu.equals("TipoEmpleado")) {
            switch (accion) {
                case "Listar":
                    List TipoEmpleado = tipoEmpleadoDao.listar();
                    request.setAttribute("tipoempleado", TipoEmpleado);
                    break;
                case "Agregar":
                    break;
                case "Editar":
                    break;
                case "Actualizar":
                    break;
                case "Eliminar":
                    break;
            }
            request.getRequestDispatcher("TipoEmpleado.jsp").forward(request, response);
        } else if (menu.equals("DetalleVenta")) {
            switch (accion) {
                case "Listar":
                    List DetalleVenta = detalleVentaDao.listar();
                    request.setAttribute("detalleVentas", DetalleVenta);
                    break;
                case "Agregar":
                    break;
                case "Editar":
                    break;
                case "Actualizar":
                    break;
                case "Eliminar":
                    break;
            }
            request.getRequestDispatcher("DetalleVenta.jsp").forward(request, response);
        } else if (menu.equals("DetalleCompra")){
            switch (accion) {
                case "Listar":
                    List DetalleCompra = detalleCompraDao.listar();
                    request.setAttribute("detallecompra", DetalleCompra);
                    break;
                case "Agregar":
                    break;
                case "Editar":
                    break;
                case "Actualizar":
                    break;
                case "Eliminar":
                    break;
            }
            request.getRequestDispatcher("DetalleCompra.jsp").forward(request, response);
        }else if (menu.equals("Venta")){
            switch(accion){
                case "Listar":
                    List listaVentas = ventaDao.listarVenta();
                    request.setAttribute("ventas", listaVentas);
                    break;
                case "Agregar":
                    break;
                case "Editar":
                    break;
                case "Actualizar":
                    break;
                case "Eliminar":
                    break;
            }
            request.getRequestDispatcher("WebVenta.jsp").forward(request, response);
        }else if (menu.equals("Cliente")){
            switch(accion){
                case "Listar":
                    List listaClientes = clienteDao.listar();
                    request.setAttribute("clientes", listaClientes);
                    break;
                case "Agregar":
                    break;
                case "Editar":
                    break;
                case "Actualizar":
                    break;
                case "Eliminar":
                    break;
            }
            request.getRequestDispatcher("Cliente.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
