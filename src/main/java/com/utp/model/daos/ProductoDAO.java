/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utp.model.daos;

import com.utp.model.connection.Conexion;
import com.utp.model.entities.Producto;
import com.utp.model.interfaces.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author onikawa
 */
public class ProductoDAO implements IProcuctoService {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public Producto selectById(String id) {
        Producto a = null;
        Connection conn = null;
        try {
            conn = Conexion.Conexion();
            String sql = "select Idproducto,IdCategoria, Descripcion,PrecioUnidad,Stock,Imagen from producto where IdProducto=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            if (rs.next()) {
                a = new Producto();
                a.setCod(rs.getString(1));
                a.setCodCat(rs.getString(2));
                a.setNom(rs.getString(3));
                a.setPrecio(rs.getString(4));
                a.setStk(rs.getString(5));
                a.setImg(rs.getString(6));

            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {

                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e2) {
            }
        }

        return a;
    }

    @Override
    public List<Producto> selectAllid(String id) {

        List<Producto> lis = new ArrayList<>();
        Connection conn = null;
        try {
            conn = Conexion.Conexion();
            String sql = "select Idproducto,IdCategoria,Descripcion,PrecioUnidad,Stock,Imagen from producto where IdCategoria=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            rs = st.executeQuery();
            while (rs.next()) {
                Producto a = new Producto();
                a.setCod(rs.getString(1));
                a.setCodCat(rs.getString(2));
                a.setNom(rs.getString(3));
                a.setPrecio(rs.getString(4));
                a.setStk(rs.getString(5));
                a.setImg(rs.getString(6));
                lis.add(a);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e2) {
            }
        }
        return lis;

    }

    @Override
    public List<Producto> selectAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
