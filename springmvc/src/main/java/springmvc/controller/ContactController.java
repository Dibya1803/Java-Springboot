package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class ContactController {
	
	@Autowired
	private UserService userService;
	
//	@ModelAttribute
//	public void commonDataForModel(Model m) 
//	{
//		m.addAttribute("Header", "Registration Form");
//		m.addAttribute("Desc", "(Register yourself to start your own Programming Page)" );
//	}
	
	@RequestMapping("/contact")
	public String showForm(Model m) 
	{
		m.addAttribute("Header", "Registration Form");
		m.addAttribute("Desc", "(Register yourself to start your own Programming Page)" );
		return "contact";
	}
	
	@RequestMapping(path = "/processform", method = RequestMethod.POST)
	public String handleForm(@ModelAttribute User user, Model model) 
	{
		System.out.println(user);
		
		if(user.getUserName().isBlank()) 
		{
			return "redirect:/contact";
		}
		
		if(user.getEmail().isBlank())
		{
			return "redirect:/contact";
		}
		
		if(user.getUserPassword().isBlank())
		{
			return "redirect:/contact";
		}
		
		model.addAttribute("Header", "Thank you for register!");
		model.addAttribute("Desc", "(Registration Details)" );
		int createdUser = this.userService.createUser(user);
		model.addAttribute("Msg", "User Created Successfully with the id "+createdUser);
		return "success";
	}
}
	
//	@RequestMapping(path = "/processform", method = RequestMethod.POST)
//	public String handleForm(jakarta.servlet.http.HttpServletRequest request) 
//	{
//		String email = request.getParameter("email");
//		System.out.println("User Email is = " + email );
//		
//		String userName = request.getParameter("userName");
//		System.out.println("User Name is = " + userName);
//		
//		String userPassword = request.getParameter("userPassword");
//		System.out.println("User Password is = " + userPassword);
//		
//		return "";
//	}
	
//	@RequestMapping(path = "/processform", method = RequestMethod.POST)
//	public String handleForm(
//			@RequestParam("email") String userEmail, 
//			@RequestParam("userName") String userName,
//			@RequestParam("userPassword") String userPassword, Model model) 
//	{
//		System.out.println("User Email is - "+userEmail);
//		System.out.println("User Name is -"+userName);
//		System.out.println("User Password is -"+userPassword);
//		
//		
//		User user = new User();
//		user.setEmail(userEmail);
//		user.setName(userName);
//		user.setPasssword(userPassword);
//		
//		System.out.println(user);
		
		//Process
//		model.addAttribute("name", userName);
//		model.addAttribute("email", userEmail);
//		model.addAttribute("password", userPassword);
		
//		model.addAttribute("user", user);
//		return "success";
//	}
	
	
