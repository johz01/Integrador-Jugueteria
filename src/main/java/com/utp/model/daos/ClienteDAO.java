package com.utp.model.daos;

import com.utp.model.entities.Cliente;
import com.utp.model.connection.Conexion;
import com.utp.model.interfaces.*;
import java.sql.*;
import java.util.*;

public class ClienteDAO implements IClienteService {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public void update(Cliente clnt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Cliente login(String id) {
        Cliente a = null;
        Connection conn = null;
        try {
            conn = Conexion.Conexion();
            String sql = "select IdCliente,Nombres,Dni,PassWord from clientes where Email=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            rs = st.executeQuery();
            if (rs.next()) {
                a = new Cliente();
                a.setCorreo(id);
                a.setCod(rs.getString(1));
                a.setNom(rs.getString(2));
                a.setDni(rs.getString(3));
                a.setClave(rs.getString(4));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {

                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e2) {
            }
        }

        return a;
    }

    @Override
    public List<Cliente> selectAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Cliente selectById(String t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
