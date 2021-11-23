package com.utp.model.daos;

import com.utp.model.entities.Categoria;
import com.utp.model.connection.Conexion;
import com.utp.model.interfaces.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoriaDAO implements ICRUD<Categoria> {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public List<Categoria> selectAll() {
        String sql = "select * from categorias";
        List<Categoria> list = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Categoria cat = new Categoria();
                cat.setCod(rs.getString(1));
                cat.setNom(rs.getString(2));
                cat.setImagen(rs.getString(3));
                list.add(cat);
            }
        } catch (SQLException e) {
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e2) {
            }
        }
        return list;

    }

    @Override
    public Categoria selectById(String t) {
        throw new UnsupportedOperationException("Not supported yet.");
    }


}
