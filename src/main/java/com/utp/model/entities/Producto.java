package com.utp.model.entities;

public class Producto {

    private String cod;
    private String codCat;
    private String nom;
    private String img;
    private String stk;
    private String precio;

    public Producto() {
    }

    public Producto(String cod, String codCat, String nom, String img, String stk, String precio) {
        this.cod = cod;
        this.codCat = codCat;
        this.nom = nom;
        this.img = img;
        this.stk = stk;
        this.precio = precio;
    }

    /**
     * @return the cod
     */
    public String getCod() {
        return cod;
    }

    /**
     * @param cod the cod to set
     */
    public void setCod(String cod) {
        this.cod = cod;
    }

    /**
     * @return the codCat
     */
    public String getCodCat() {
        return codCat;
    }

    /**
     * @param codCat the codCat to set
     */
    public void setCodCat(String codCat) {
        this.codCat = codCat;
    }

    /**
     * @return the nom
     */
    public String getNom() {
        return nom;
    }

    /**
     * @param nom the nom to set
     */
    public void setNom(String nom) {
        this.nom = nom;
    }

    /**
     * @return the img
     */
    public String getImg() {
        return img;
    }

    /**
     * @param img the img to set
     */
    public void setImg(String img) {
        this.img = img;
    }

    /**
     * @return the stk
     */
    public String getStk() {
        return stk;
    }

    /**
     * @param stk the stk to set
     */
    public void setStk(String stk) {
        this.stk = stk;
    }

    /**
     * @return the precio
     */
    public String getPrecio() {
        return precio;
    }

    /**
     * @param precio the precio to set
     */
    public void setPrecio(String precio) {
        this.precio = precio;
    }

}
