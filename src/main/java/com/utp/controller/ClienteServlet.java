/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utp.controller;

import com.utp.model.daos.ClienteDAO;
import com.utp.model.entities.Cliente;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

/**
 *
 * @author onikawa
 */
public class ClienteServlet extends HttpServlet {

    ClienteDAO obj = new ClienteDAO();
    Cliente cli = new Cliente();
    String id;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("accion");
        switch (action) {
            case "Login":
                LoginCliente(request, response);
                break;
            case "Registrase":
                NuevoCliente(request, response);
                break;
            
        }
    }

    private void LoginCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses = request.getSession();
        String user = request.getParameter("user").trim();
        String pass = request.getParameter("pass").trim();
        cli = obj.login(user);
        if (cli == null) {
            request.setAttribute("mensaje", "Usuario no existe.");
            String pagina = "/Login.jsp";
            request.getRequestDispatcher(pagina).forward(request, response);
            //response.sendRedirect(pagina);
        } else {
            if (cli.getClave().equals(pass)) {
                ses.setAttribute("cliente", cli);
                request.getRequestDispatcher("/index.jsp").forward(request, response);
                //response.sendRedirect("Vistas/Administrador.jsp");
            } else {
                request.setAttribute("mensaje", "Clave o Usuario incorrecto.");
                String pagina = "/Login.jsp";
                request.getRequestDispatcher(pagina).forward(request, response);
                //response.sendRedirect(pagina);
            }
        }
    }

   

    private void NuevoCliente(HttpServletRequest request, HttpServletResponse response) {

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
