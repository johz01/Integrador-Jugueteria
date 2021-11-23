/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utp.controller;

import com.utp.model.daos.CompraDAO;
import com.utp.model.daos.ProductoDAO;
import com.utp.model.entities.Cliente;
import com.utp.model.entities.Compra;
import com.utp.model.entities.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author onikawa
 */
public class CompraServlet extends HttpServlet {

    ProductoDAO obj2 = new ProductoDAO();
    CompraDAO obj = new CompraDAO();
    Compra cat = new Compra();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("accion");
        switch (action) {
            case "Agregar":
                AgregarCarrito(request, response);
                break;
            case "Borrar":
                BorrarCarrito(request, response);
                break;
            case "Grabar":
                GrabarCompra(request, response);
                break;
            case "Comprar":
                ListarCarrito(request, response);
                break;
            case "Actualizar":
                ActualizarCarrito(request, response);
                break;
        }
    }

    protected void AgregarCarrito(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int cont = 1;
        String coda = request.getParameter("cod");
        Producto ar = obj2.selectById(coda);
        Compra cp = new Compra();
        cp.setCant(cont);
        cp.setCod(coda);
        cp.setImg(ar.getImg());
        cp.setNom(ar.getNom());
        cp.setPrecio(ar.getPrecio());
        List<Compra> lista;
        HttpSession ses = request.getSession();
        if (ses.getAttribute("canasta") == null) {
            lista = new ArrayList();

        } else {
            lista = (ArrayList) ses.getAttribute("canasta");
        }
        lista.add(cp);
        ses.setAttribute("canasta", lista);
        String cod = request.getParameter("id");
        request.setAttribute("producto", obj2.selectAllid(cod));
        String pag = "/pagArticulo.jsp";
        request.getRequestDispatcher(pag).forward(request, response);

    }

    protected void BorrarCarrito(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses = request.getSession();
        int indice = Integer.parseInt(request.getParameter("id"));
        List<Compra> lista = (ArrayList) ses.getAttribute("canasta");
        lista.remove(indice);
        ses.setAttribute("canasta", lista);//actualizar la sesion
        String pag = "/pagCompra.jsp";
        request.getRequestDispatcher(pag).forward(request, response);

    }

    protected void ListarCarrito(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String coda = request.getParameter("cod");
        int can = Integer.parseInt(request.getParameter("cant"));
        Producto ar = obj2.selectById(coda);
        Compra cp = new Compra();
        cp.setCant(can);
        cp.setCod(coda);
        cp.setImg(ar.getImg());
        cp.setNom(ar.getNom());
        cp.setPrecio(ar.getPrecio());
        List<Compra> lista;
        HttpSession ses = request.getSession();
        if (ses.getAttribute("canasta") == null) {
            lista = new ArrayList();
        } else {
            lista = (ArrayList) ses.getAttribute("canasta");
        }
        lista.add(cp);
        ses.setAttribute("canasta", lista);

        String pag = "/pagCompra.jsp";
        request.getRequestDispatcher(pag).forward(request, response);

    }

    protected void ActualizarCarrito(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          HttpSession ses = request.getSession();
        int indice = Integer.parseInt(request.getParameter("idc"));
        String coda = request.getParameter("id");
        int can = Integer.parseInt(request.getParameter("cat"));
        List<Compra> lista = (ArrayList) ses.getAttribute("canasta");
       lista.remove(indice);

         Producto ar = obj2.selectById(coda);
        Compra cp = new Compra();
        cp.setCant(can);
        cp.setCod(coda);
        cp.setImg(ar.getImg());
        cp.setNom(ar.getNom());
        cp.setPrecio(ar.getPrecio());
        lista.add(cp);
        
        ses.setAttribute("canasta", lista);//actualizar la sesion
        String pag = "/pagCompra.jsp";
        request.getRequestDispatcher(pag).forward(request, response);


    }

    protected void GrabarCompra(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses = request.getSession();

        Cliente cli = (Cliente) ses.getAttribute("cliente");
        List<Compra> lista = (ArrayList) ses.getAttribute("canasta");
        String fac = obj.grabarFactura(cli.getCod(), lista);
        double tot = 0;
        for (Compra x : lista) {
            tot = x.total() + tot;
        }
        request.setAttribute("factura", fac);
        request.setAttribute("cli", cli.getNom());
        request.setAttribute("total", tot);
        ses.setAttribute("cliente", cli);
        ses.setAttribute("canasta", null);

        String pag = "/Resumen.jsp";
        request.getRequestDispatcher(pag).forward(request, response);

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
