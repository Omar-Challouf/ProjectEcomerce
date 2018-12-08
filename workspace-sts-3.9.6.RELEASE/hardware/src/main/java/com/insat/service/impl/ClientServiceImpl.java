package com.insat.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insat.model.Client;
import com.insat.repository.ClientRepository;
import com.insat.service.ClientService;

@Service
public class ClientServiceImpl implements ClientService {
	
	
	@Autowired
	ClientRepository clientRepository ;

	public Client findByEmail(String email) {
		return clientRepository.findByEmail(email);
	}

}
