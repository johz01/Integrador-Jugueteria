package com.utp.model.entities;

public class Compra extends Producto {

    private int cant;
 

    public double total() {
        return getCant() * Double.parseDouble(super.getPrecio());
    }

    public Compra() {
    }

    public Compra(int cant, String cod, String codCat, String nom, String img, String stk, String precio) {
        super(cod, codCat, nom, img, stk, precio);
        this.cant = cant;
    }

    /**
     * @return the cant
     */
    public int getCant() {
        return cant;
    }

    /**
     * @param cant the cant to set
     */
    public void setCant(int cant) {
        this.cant = cant;
    }



}
