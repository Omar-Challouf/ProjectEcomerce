package com.insat.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.insat.model.Product;


@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

	
}
