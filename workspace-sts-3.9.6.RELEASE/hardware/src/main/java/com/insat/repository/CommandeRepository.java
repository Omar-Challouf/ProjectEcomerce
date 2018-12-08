package com.insat.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.insat.model.Client;
import com.insat.model.Commande;


@Repository
public interface CommandeRepository extends JpaRepository<Commande, Long> {
	
	public List<Commande> findByClient(Client client) ;

}
