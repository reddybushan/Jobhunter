package com.jobhunter.services;

import org.springframework.data.repository.CrudRepository;

import com.jobhunter.model.User;


public interface UserRepository extends CrudRepository<User, Integer>{

	User findByEmailAndPassword(String email,String password);
}
