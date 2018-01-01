package com.jobhunter.util;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.jobhunter.model.Client;
import com.jobhunter.services.ClientRepository;

@Component
public class ClientConverter implements Converter<Object, Client>{
	 
    
    @Autowired
    ClientRepository clientService;
 
    /**
     * Gets UserProfile by Id
     * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
     */
    public Client convert(Object element) {
    	if (element instanceof Client) {
    		return (Client) element;
    	}
        Integer id = Integer.parseInt((String)element);
        Client client= clientService.findOne(id);
        return client;
    }
     
}
