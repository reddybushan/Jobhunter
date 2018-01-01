package com.jobhunter.services;

import org.springframework.data.repository.CrudRepository;

import com.jobhunter.model.Client;


public interface ClientRepository extends CrudRepository<Client, Integer> {

}
