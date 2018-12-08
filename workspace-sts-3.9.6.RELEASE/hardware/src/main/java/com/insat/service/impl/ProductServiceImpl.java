package com.insat.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insat.exception.ResourceNotFoundException;
import com.insat.model.Product;
import com.insat.repository.ProductRepository;
import com.insat.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	
	
	@Autowired
	public ProductRepository productRepository;

	@Override
	public List<Product> getAll() {
		
		return productRepository.findAll();
	}

	@Override
	public Product getById(Long id) {
		
		return productRepository.findById(id)
				.orElseThrow(() -> new ResourceNotFoundException("Product ", "id", id));
	}

	public List<Product> getAllById(List<Long> ids) {
		
		List<Product> products = new ArrayList<>();
		
		for(Long id : ids) {
			products.add(productRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Product ", "id", id)));
		}
		
		return products;
	}

	@Override
	public List<Product> getByName(String name) {
	 List<Product> product=	productRepository.findAll();
	 List<Product> res= new ArrayList<>();
	 for(int i=0;i<product.size();i++)
	 {
		 if (product.get(i).getName().toLowerCase().contains(name.toLowerCase()))
		 {
			 res.add(product.get(i));
		 }
		 
	 }
	 return res;
	}

	@Override
	public List<Product> getProductsByCategory(int id) {
		List<Product> product=	productRepository.findAll();
		List<Product> res= new ArrayList<>();
		 for(int i=0;i<product.size();i++)
		 {
			 if (product.get(i).getCategory().getId()==id)
			 { 
				 res.add(product.get(i));
			 }
			 
		 }
		 return res;
	}

	@Override
	public List<Product> getProductWithDiscount() {
		List<Product> product=	productRepository.findAll();
		 List<Product> res= new ArrayList<>();
		 for(int i=0;i<product.size();i++)
		 {
			 if (product.get(i).getRemise().equals("True"))
			 {
				 res.add(product.get(i));
			 }
			 
		 }
		 return res;
		}
	

}
