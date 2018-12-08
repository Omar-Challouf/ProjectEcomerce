package com.insat.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotBlank;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 * The Class Etudiant.
 *
 * @author HamdiBouslah on 26 oct. 2018
 */
@Entity
@Table(name = "client")
@EntityListeners(AuditingEntityListener.class)
@JsonIgnoreProperties(value = {"createdAt", "updatedAt"}, allowGetters = true)
public class Client {

	/** The id. */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	/** The cin. */
	private Integer cin;

	/** The nom. */
	@NotBlank
	private String nom;

	/** The prenom. */
	@NotBlank
	private String prenom;

	/** The email. */
	private String email;
	
	@OneToMany(cascade = CascadeType.ALL, orphanRemoval = false, mappedBy = "client" )
	private List<Commande> commandes = new ArrayList<Commande>(); 


	/** The created at. */
	@Column(nullable = false, updatable = false)
	@Temporal(TemporalType.TIMESTAMP)
	@CreatedDate
	private Date createdAt;

	/** The updated at. */
	@Column(nullable = false)
	@Temporal(TemporalType.TIMESTAMP)
	@LastModifiedDate
	private Date updatedAt;

	/**
	 * Instantiates a new note.
	 */
	public Client() {
		/*
		 * 
		 */
	}

	/**
	 * Gets the id.
	 *
	 * @return the id
	 */
	public Long getId() {

		return id;
	}

	/**
	 * Sets the id.
	 *
	 * @param id the id to set
	 */
	public void setId(Long id) {

		this.id = id;
	}

	/**
	 * Gets the cin.
	 *
	 * @return the cin
	 */
	public Integer getCin() {

		return cin;
	}

	/**
	 * Sets the cin.
	 *
	 * @param cin the cin to set
	 */
	public void setCin(Integer cin) {

		this.cin = cin;
	}

	/**
	 * Gets the nom.
	 *
	 * @return the nom
	 */
	public String getNom() {

		return nom;
	}

	/**
	 * Sets the nom.
	 *
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {

		this.nom = nom;
	}

	/**
	 * Gets the prenom.
	 *
	 * @return the prenom
	 */
	public String getPrenom() {

		return prenom;
	}

	/**
	 * Sets the prenom.
	 *
	 * @param prenom the prenom to set
	 */
	public void setPrenom(String prenom) {

		this.prenom = prenom;
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
	 * @return the commandes
	 */
	public List<Commande> getCommandes() {
		return commandes;
	}

	/**
	 * @param commandes the commandes to set
	 */
	public void setCommandes(List<Commande> commandes) {
		this.commandes = commandes;
	}

	/**
	 * Gets the created at.
	 *
	 * @return the created at
	 */
	public Date getCreatedAt() {

		return createdAt;
	}

	/**
	 * Sets the created at.
	 *
	 * @param createdAt the new created at
	 */
	public void setCreatedAt(Date createdAt) {

		this.createdAt = createdAt;
	}

	/**
	 * Gets the updated at.
	 *
	 * @return the updated at
	 */
	public Date getUpdatedAt() {

		return updatedAt;
	}

	/**
	 * Sets the updated at.
	 *
	 * @param updatedAt the new updated at
	 */
	public void setUpdatedAt(Date updatedAt) {

		this.updatedAt = updatedAt;
	}

}
