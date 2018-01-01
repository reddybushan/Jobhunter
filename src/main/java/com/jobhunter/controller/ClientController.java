package com.jobhunter.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.jobhunter.model.Client;
import com.jobhunter.services.ClientRepository;


@Controller
@SessionAttributes({"clientObj"})

public class ClientController {
	
	@Autowired
	ClientRepository clientService;
	
	
	
	@RequestMapping(value = { "/switch" }, method = RequestMethod.GET)
	public String switchAccount(ModelMap model) {
		//List<Client> client = userService.findAllClients();
		model.addAttribute("clients", clientService.findAll());
		return "switch";
	}
	
	@RequestMapping(value = { "/switch" }, method = RequestMethod.POST)
	public String switchAccount(HttpServletRequest request,
			ModelMap model) {
		Client client = clientService.findOne(Integer.parseInt(request.getParameter("clientId")));
		model.addAttribute("clientObj", client);
		
		// model.addAttribute("clientObj",client);
		return "redirect:list";
	}

}
