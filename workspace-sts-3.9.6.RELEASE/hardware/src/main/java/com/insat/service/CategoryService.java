package com.insat.service;

import java.util.List;
import com.insat.model.Category;

public interface CategoryService {

	List<Category> getAll(); 
	
	Category getById(Long id);
}
