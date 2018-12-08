package com.insat.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.insat.model.Category;


@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {

}
