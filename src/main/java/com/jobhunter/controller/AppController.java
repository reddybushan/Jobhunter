package com.jobhunter.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.jobhunter.model.Candidate;
import com.jobhunter.model.Client;
import com.jobhunter.model.Jobs;
import com.jobhunter.model.Notify;
import com.jobhunter.model.User;
import com.jobhunter.model.ViewCandidates;
import com.jobhunter.services.NotifyRepository;
import com.jobhunter.services.UserRepository;



@Controller
@RequestMapping("/")
@SessionAttributes({"userObj"})

public class AppController {

	
	@Autowired
	UserRepository userService;

	@Autowired
	NotifyRepository notifyService;

	
	/*
	@Autowired
	JobService jobService;
	
	
	@Autowired
	//AccountService accountService;
	*/
	
	/* This method will list all existing users */
	 
	@RequestMapping(value = { "/", }, method = RequestMethod.GET)
	public String home(ModelMap model) {
		//List<Client> client = userService.findAllClients();
		//model.addAttribute("client", client);
		
		return "login";
	}
	
	@RequestMapping(value = { "/dashboard" }, method = RequestMethod.GET)
	public String dashboard(ModelMap model) {
		 
		model.addAttribute("tasks", notifyService.findAll());
		
		return "dashboard";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPage(User user,ModelMap model) { 
		try {
			if (user != null)
				user = userService.findByEmailAndPassword(user.getEmail(),
						user.getPassword());
			if (user != null) {
				model.addAttribute("userObj", user);
				return "redirect:/dashboard";
			}

			return "redirect:/";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "login";
	}
	 /*
	
	@RequestMapping(value = { "/dashboard" }, method = RequestMethod.GET)
	public String dashboard(ModelMap model) {
		 
		List<Notify> tasks = notifyService.tasks();
		//String news =  notifyService.news();
		model.addAttribute("tasks", tasks);
		
		return "dashboard";
	}
	
	@RequestMapping(value = { "/account" }, method = RequestMethod.GET)
	public String accountDetails(@ModelAttribute("client") Client client,ModelMap model) {
		
		String status = null;
		if(client.getName() != null){		 
		status = accountService.addAccount(client);
		}
		
		return "account";
	}
	
	@RequestMapping(value = { "/switch" }, method = RequestMethod.GET)
	public String switchAccount(ModelMap model) {
		List<Client> client = userService.findAllClients();
		model.addAttribute("client", client);
		return "switch";
	}
 
	@RequestMapping(value = { "/candidates" }, method = RequestMethod.GET)
	public String candidateList(Jobs job,ModelMap model) {
		Jobs job1 = userService.findJobById(job.getJobId()+"");
		List<ViewCandidates> vcandidate =  userService.findViewCandidatesByJobId(job1.getJobId());
		model.addAttribute("jobs", job1); 
		model.addAttribute("vcandidate", vcandidate); 
		
		return "candidatelist1";
	}
	
	@RequestMapping(value = { "/saveCandidate" }, method = RequestMethod.POST)
	public String saveCandidate(Candidate cand,ModelMap model) {
		int status = userService.saveCandidate(cand);
		model.addAttribute("status", status); 
		return "candidatelist1";
	}
	
	@RequestMapping(value = { "/candidatedetails" }, method = RequestMethod.GET)
	public String candidateDetails(ModelMap model) {
		 
		return "candidatedetails";
	}
	
	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public String listUsers(@ModelAttribute("client") Client client,ModelMap model) {
		
		if(client!=null){
			List<Jobs> job =  userService.findJobsByClientId(client.getClientId());
			 client = userService.findByClientId(client.getClientId());
			 
		//	 int viewcount = userService.findViewCountByJobID(client.getClientId());
			 
			model.addAttribute("jobs", job); 
			model.addAttribute("client", client); 
		}
  
		return "userslist";
	}
	
	@RequestMapping(value = { "/jobentry" }, method = RequestMethod.GET)
	public String createJob(@ModelAttribute("job") Jobs job ,ModelMap model) {
		String status = null;
		if(job.getJobTitle() != null){		 
		status = jobService.addJob(job);
		}
		List<User> user = userService.findAllUsers();
		model.addAttribute("users", user);
		List<Client> client = userService.findAllClients();
		model.addAttribute("client", client);
		
		return "jobentry";
		 
	}
	@RequestMapping(value = { "/addkeywords" }, method = RequestMethod.GET)
	public String addKeywords(ModelMap model) {
		return "addkeywords";
		
	}
		
	 
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPage(User user,ModelMap model) { 
		try{ 
			if(user!=null)
				 user  =	userService.authenticateUser(user.getEmail(),user.getPassword());
			if(user!=null){
				model.addAttribute("user", user);
				List<Jobs> job =  userService.findJobsByRecruiter(user.getId());
				model.addAttribute("jobs", job);
				
			return "redirect:/dashboard";
			}
			
			return "redirect:/";
		}
		catch(Exception e){
			e.printStackTrace();
		}
			return "login"; 
	}
	 
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response){
		 
		return "redirect:/";
	}

	 */

}