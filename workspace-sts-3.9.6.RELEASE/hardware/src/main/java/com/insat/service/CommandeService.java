package com.insat.service;

import java.util.List;

import com.insat.model.Client;
import com.insat.model.Commande;

public interface CommandeService {
	
	/**
	 * Creates the commande.
	 *
	 * @param commande the commande
	 * @return the commande
	 */
	Commande create(Commande commande);
	
	List<Commande> getCommandesByClient (Client client); 

}
