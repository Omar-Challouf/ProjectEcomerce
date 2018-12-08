package com.insat.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.insat.dto.CategoryDTO;
import com.insat.dto.MinCategoryDTO;
import com.insat.dto.ProductDTO;
import com.insat.model.Category;
import com.insat.model.Product;
import com.insat.service.CategoryService;
@CrossOrigin(origins ="http://localhost:4200")
@RestController
@RequestMapping("/api")
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService ;
	
	
	
	@GetMapping("/categories")
	public List<MinCategoryDTO> getAllDTO(){
		List<Category> categories =  categoryService.getAll() ;
		List<MinCategoryDTO> categoriesDTO = new ArrayList<>();
		
		
		categories.forEach(category -> { 
			categoriesDTO.add(new MinCategoryDTO(category.getId(),category.getName())); 
		});
		
		return categoriesDTO;
	}
	
	@GetMapping("/category/{id}")
	public CategoryDTO getById(@PathVariable(value = "id") Long id) {

		List<ProductDTO> productsDTO = new ArrayList<ProductDTO>();
		Category category = categoryService.getById(id);
		CategoryDTO categoryDTO = new CategoryDTO(category.getId(),category.getName());
		List<Product> products = category.getProducts() ;
products.forEach(product -> { 
			
			ProductDTO productDTO = new ProductDTO(product.getId(), 
					product.getName(), 
					product.getCategory().getName(),
					product.getPrix(),
					product.getDisponible(),
					product.getDescription(),
					product.getDateSortie(),
					product.getPathUrlImage(),
					product.getRemise());
			productDTO.setCategoryDTO(new CategoryDTO(product.getCategory().getId(),product.getCategory().getName()));
			productsDTO.add(productDTO);
		});
	
	categoryDTO.setProducts(productsDTO);
		
		return categoryDTO;
	}
	
	
}
