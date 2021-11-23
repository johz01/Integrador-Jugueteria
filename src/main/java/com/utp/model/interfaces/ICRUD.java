package com.utp.model.interfaces;

import java.util.List;

public interface ICRUD<T> {

    List<T> selectAll();

    public T selectById(String id);

//    public void insert(T t);
//
//    public void update(T t);
//
//    public void delete(String id);

}
