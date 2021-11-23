/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utp.model.interfaces;
import com.utp.model.entities.Cliente;

public interface IClienteService extends ICRUD<Cliente>{
      //public Cliente validar(String user, String dni);
        public void update(Cliente t);
      Cliente login( String id);
       //Boolean login(Cliente Cliente);
   
}
