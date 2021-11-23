
package com.utp.model.daos;

import com.utp.model.entities.Compra;
import java.util.*;
public class Prueba2 {

    public static void main(String[] args) {
        List<Compra> lis=new ArrayList();
        //  public Compra(int cantidad, String coda, String nomart, String imagen, int stk, double precio) {
        
        lis.add(new Compra(1, "A0001", "40001", "40001", "40001", "40001", "40001"));

        CompraDAO obj=new CompraDAO();
        String fac=obj.grabarFactura("C0002", lis);
        System.out.println("factura generada "+fac);
    }
    
}
