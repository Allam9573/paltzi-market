package com.lukanka.market.persistence;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.lukanka.market.persistence.crud.ProductoCrudRepository;
import com.lukanka.market.persistence.entities.Producto;

public class ProductoRepository {

    @Autowired
    private ProductoCrudRepository productoCrudRepository;

    public List<Producto> getAll() {
        return (List<Producto>) this.productoCrudRepository.findAll();
    }

}
