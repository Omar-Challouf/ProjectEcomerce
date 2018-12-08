package com.insat.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insat.exception.ResourceNotFoundException;
import com.insat.model.Category;
import com.insat.repository.CategoryRepository;
import com.insat.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	CategoryRepository categoryRepository;

	public List<Category> getAll() {
		return categoryRepository.findAll();
	}

	
	public Category getById(Long id) {
		
		return categoryRepository.findById(id)
				.orElseThrow(() -> new ResourceNotFoundException("Category", "id", id));
	} 

	
}
