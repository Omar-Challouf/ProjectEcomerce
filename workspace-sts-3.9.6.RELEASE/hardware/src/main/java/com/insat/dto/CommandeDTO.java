package com.insat.dto;

import java.util.Date;
import java.util.List;

/**O
 * The Class Commande.
 *
 * @author HamdiBouslah on 21 nov. 2018
 */
public class CommandeDTO {

	/** The id. */
	private Long id;

	/** The reference. */
	private String reference;

	/** The date. */
	private Date date;

	
	private String email;

	/** The product */

	private List<Long> productsId;

	/** The statut. */
	private String statut;

	/**
	 * Instantiates a new Commande.
	 */
	public CommandeDTO() {
		/*
		 * 
		 */
	}
	
	

	public CommandeDTO(Long id, String reference, Date date, String email, List<Long> productsId, String statut) {
		this.id = id;
		this.reference = reference;
		this.date = date;
		this.email = email;
		this.productsId = productsId;
		this.statut = statut;
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
	 * @return the reference
	 */
	public String getReference() {
		return reference;
	}


	/**
	 * @param reference the reference to set
	 */
	public void setReference(String reference) {
		this.reference = reference;
	}


	/**
	 * @return the date
	 */
	public Date getDate() {
		return date;
	}


	/**
	 * @param date the date to set
	 */
	public void setDate(Date date) {
		this.date = date;
	}


	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}


	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}


	/**
	 * @return the productsId
	 */
	public List<Long> getProductsId() {
		return productsId;
	}


	/**
	 * @param productsId the productsId to set
	 */
	public void setProductsId(List<Long> productsId) {
		this.productsId = productsId;
	}


	/**
	 * @return the statut
	 */
	public String getStatut() {
		return statut;
	}


	/**
	 * @param statut the statut to set
	 */
	public void setStatut(String statut) {
		this.statut = statut;
	}
	
}
