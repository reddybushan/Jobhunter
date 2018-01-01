package com.jobhunter.services;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.jobhunter.model.Client;
import com.jobhunter.model.Jobs;

public interface JobsRepository extends CrudRepository<Jobs, Integer> {
	
	List<Jobs> findByClient(Client client);

}
