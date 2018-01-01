package com.jobhunter.controller;

 

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.codehaus.jettison.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.jobhunter.model.Client;
import com.jobhunter.model.Jobs;
import com.jobhunter.model.User;
import com.jobhunter.services.ClientRepository;
import com.jobhunter.services.JobsRepository;
import com.jobhunter.services.UserRepository;

@Controller
public class JobsController {

	@Autowired
	ClientRepository clientService;
	
	@Autowired
	JobsRepository jobService;
	
	@Autowired
	UserRepository userService;
	
	
	
	
	/**
	 * This method handles login GET requests.
	 * If users is already logged-in and tries to goto login page again, will be redirected to list page.
	 */
	
	
	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public String listUsers(ModelMap model, HttpSession session) {
		
		Client client = (Client) session.getAttribute("clientObj");
		List<Jobs> job = new ArrayList();
		if(client!=null){
		job =  jobService.findByClient(client);
			
			model.addAttribute("jobs", job); 
			model.addAttribute("client", client); 
		}
  
		return "userslist";
	}
	
	@RequestMapping(value = { "/jobentry" }, method = RequestMethod.GET)
	public String jobDisplay(ModelMap model, HttpServletRequest request,HttpSession session) {

		Jobs jobs = new Jobs();
		model.addAttribute("users", userService.findAll());
		if (!StringUtils.isEmpty(request.getParameter("jobId"))) {
			jobs = jobService.findOne(Integer.parseInt(request.getParameter("jobId")));
			model.addAttribute("clientid", jobs.getClient().getClientId());
		} else if (!StringUtils.isEmpty(request.getParameter("clientId"))) {
			model.addAttribute("clientid", request.getParameter("clientId"));
		}
		
		User loggedUser = (User)session.getAttribute("userObj");
		if (loggedUser != null && !loggedUser.getUserProfiles().getType().equals("ADMIN")) {
			Client client = (Client)session.getAttribute("clientObj");
			jobs.setClient(client);
			jobs.setRecruiter(loggedUser);
		}

	//	List<Client> clients = userService.findAllClients();
		model.addAttribute("clients", clientService.findAll());
		model.addAttribute("job", jobs);

		model.addAttribute("JobTypeEnum", Jobs.JobTypeEnum.values());
		model.addAttribute("VisaStatusEnum", Jobs.VisaStatusEnum.values());

		return "jobentry";

	}
	
	@RequestMapping(value = { "/jobentry" }, method = RequestMethod.POST)
	public String createJob(@ModelAttribute("job") @Valid Jobs job, BindingResult error, ModelMap model,
			HttpServletRequest request, HttpSession session) {

		Client client = (Client)session.getAttribute("clientObj");
		User loggedUser = (User)session.getAttribute("userObj");
		if (loggedUser != null && !loggedUser.getUserProfiles().getType().equals("ADMIN")) {
			job.setClient(client);
			job.setRecruiter(loggedUser);
		}
		if (!error.hasErrors()) {
			System.out.println("inside the job details ------------------");
			if (!StringUtils.isEmpty(request.getParameter("jobId"))) {
				job.setJobId(Integer.parseInt(request.getParameter("jobId")));
			}
			
			job.setStartDt(new Date());
			job.setEndDt(new Date());
			jobService.save(job);
			return "redirect:/list";

		}
		
		System.out.println("outside the jobspage ---------------");
		
		model.addAttribute("users", userService.findAll());
		model.addAttribute("clients", clientService.findAll());
		model.addAttribute("JobTypeEnum", Jobs.JobTypeEnum.values());
		model.addAttribute("VisaStatusEnum", Jobs.VisaStatusEnum.values());

		return "jobentry";

	}
	 

}
