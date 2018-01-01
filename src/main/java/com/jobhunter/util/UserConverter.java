package com.jobhunter.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.jobhunter.model.User;
import com.jobhunter.services.UserRepository;

@Component
public class UserConverter implements Converter<Object, User>{
	 
    
    @Autowired
    UserRepository userService;
 
    /**
     * Gets UserProfile by Id
     * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
     */
    public User convert(Object element) {
        //Integer id = Integer.parseInt((String)element);
    	if (element instanceof User) {
    		return (User) element;
    	}
        User user= userService.findOne(Integer.parseInt((String)element));
        return user;
    }
     
}
