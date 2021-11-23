/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utp.model.interfaces;

import com.utp.model.entities.Compra;
import java.util.List;

/**
 *
 * @author onikawa
 */
public interface ICompraService {

    String grabarFactura(String cod, List<Compra> list);
}
