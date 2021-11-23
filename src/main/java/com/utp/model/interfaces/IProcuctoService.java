/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utp.model.interfaces;

import com.utp.model.entities.Producto;
import java.util.List;

/**
 *
 * @author onikawa
 */
public interface IProcuctoService extends ICRUD<Producto> {

    List<Producto> selectAllid(String id);

}
