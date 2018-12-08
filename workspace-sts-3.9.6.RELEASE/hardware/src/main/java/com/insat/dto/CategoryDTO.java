package com.insat.dto;

import java.io.Serializable;
import java.util.List;

import com.insat.model.Product;


public class CategoryDTO implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6084052810708350394L;

	/** The id. */
	
	private Long id;


	private String name;
	
	
	private List<ProductDTO> productsdto; 


	public CategoryDTO() {
		
	}
	
	public CategoryDTO(Long id, String name) {
		this.id = id;
		this.name = name;
	}



	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the productsdto
	 */
	public List<ProductDTO> getProducts() {
		return productsdto;
	}

	/**
	 * @param productsdto the productsdto to set
	 */
	public void setProducts(List<ProductDTO> productsdto) {
		this.productsdto = productsdto;
	}

	

}
