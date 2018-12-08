package com.insat.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.insat.dto.CommandeDTO;
import com.insat.model.Commande;
import com.insat.model.Product;
import com.insat.service.ClientService;
import com.insat.service.CommandeService;
import com.insat.service.ProductService;
@CrossOrigin(origins ="http://localhost:4200")
@RestController
@RequestMapping("/api")
public class CommandeController {
	
	@Autowired
	CommandeService commandeService ; 
	
	@Autowired
	ClientService clientService ; 

	@Autowired
	ProductService productService ; 
	
	@PostMapping("/commande")
	public CommandeDTO createCommande(@Valid @RequestBody CommandeDTO commandeDTO) {

		List<Long> ids = new ArrayList<>();
		
		Commande commande = new Commande () ;
		commande.setReference(commandeDTO.getReference());
		commande.setDate(commandeDTO.getDate());
		commande.setStatut(commandeDTO.getStatut());
		// Client 
		commande.setClient(clientService.findByEmail(commandeDTO.getEmail()));
		// Products
		commande.setProducts(productService.getAllById(commandeDTO.getProductsId()));
		// Save Commande 
		Commande newCommande = commandeService.create(commande);
		
		for(Product product : newCommande.getProducts()) {
			ids.add(product.getId());
		}
		
		CommandeDTO newCommandeDTO = new CommandeDTO(newCommande.getId(),
				newCommande.getReference(),
				newCommande.getDate(),
				newCommande.getClient().getEmail(),
				ids, newCommande.getStatut());
		
		return newCommandeDTO ;
	}
	
	@GetMapping("/commande")
	public List<CommandeDTO> getCommandesByUser (@RequestParam(value = "email") String email) {
		
		List<CommandeDTO> commandesDTO = new ArrayList<CommandeDTO>() ;
 		
		for (Commande commande: commandeService.getCommandesByClient(clientService.findByEmail(email))) {
			
			List<Long> ids = new ArrayList<>();
			for(Product product : commande.getProducts()) {
				ids.add(product.getId());
			}
			commandesDTO.add(new CommandeDTO(commande.getId(),
					commande.getReference(),
					commande.getDate(),
					commande.getClient().getEmail(),
					ids, commande.getStatut()));
		}; 
		
		return commandesDTO;
	}
	 
}
