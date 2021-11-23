/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utp.model.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    private static Connection con = null;
    private static final String url = "jdbc:mysql://localhost:3306/bdTienda3";
    private static final String usr = "root";
    private static final String psw = "";

    public static Connection Conexion() {

        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, usr, psw);
            System.out.println("Hay conexión!");
        } catch (ClassNotFoundException ex) {
            System.out.println("No hay Driver!!");
        } catch (SQLException ex) {
            System.out.println("Error con la BD ");
        }
        return con;
    }
}
