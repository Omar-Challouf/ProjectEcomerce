package com.insat.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insat.model.Client;
import com.insat.model.Commande;
import com.insat.repository.CommandeRepository;
import com.insat.service.CommandeService;

@Service
public class CommandeServiceImpl implements CommandeService {

	
	@Autowired
	CommandeRepository commandeRepository ; 
	
	public Commande create(Commande commande) {
		
		commande.setCreatedAt(new Date());
		commande.setUpdatedAt(new Date());
		return commandeRepository.save(commande);
	}

	public List<Commande> getCommandesByClient(Client client) {
		return commandeRepository.findByClient(client);
	}

}
