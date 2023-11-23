package com.lukanka.market.persistence.crud;

import org.springframework.data.repository.CrudRepository;

import com.lukanka.market.persistence.entities.Producto;

public interface ProductoCrudRepository extends CrudRepository<Producto, Integer> {

}
