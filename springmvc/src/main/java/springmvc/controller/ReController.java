package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class ReController {
	
	//using redirect:prefix
//	@RequestMapping("/one")
//	public String one()
//	{
//		System.out.println("this is one handler");
//		return "redirect:/enjoy";
//	}
	
	//Using RedirectView
	@RequestMapping("/one")
	public RedirectView one()
	{
		System.out.println("this is one handler");
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("http://13.53.171.172:3000/");
		return redirectView;
	}
	
	@RequestMapping("/enjoy")
	public String two() 
	{
		System.out.println("this is second handler[enjoy]");
		System.out.println("Redirecting to contact page");
		return "contact";
		
	}

}
