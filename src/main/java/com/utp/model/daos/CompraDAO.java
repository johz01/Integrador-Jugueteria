/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utp.model.daos;

import com.utp.model.connection.Conexion;
import com.utp.model.entities.Compra;
import com.utp.model.interfaces.*;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

/**
 *
 * @author onikawa
 */
public class CompraDAO implements ICompraService {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public String grabarFactura(String cod, List<Compra> list) {
          String fac = "";
        double sm = 0;
        for (Compra x : list) {
            sm = sm + x.total();
        }
        Connection conn = null;
        try {
            conn = Conexion.Conexion();
            String sql = "{call spfactura(?,?)}";
            CallableStatement st = conn.prepareCall(sql);
            st.setString(1, cod);//codigo de cliente
            st.setDouble(2, sm);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            rs.next();//leer el valor devuelto
            fac = rs.getString(1);//obtenemos la factura
            //grabar el detalle
            String sql2 = "{call spdetalle(?,?,?)}";
            CallableStatement st2 = conn.prepareCall(sql2);
            for (Compra x : list) {//recorrer la lista de compra
                st2.setString(1, fac);
                st2.setString(2, x.getCod());
                st2.setInt(3, x.getCant());
                st2.executeUpdate();
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

        return fac;
    }

    public Object selectAllid(String cod) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        
    }

}
