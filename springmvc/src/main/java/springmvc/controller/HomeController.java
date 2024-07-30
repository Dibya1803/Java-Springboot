package springmvc.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/first")
public class HomeController {
	
	@RequestMapping(path = "/home", method = RequestMethod.GET)
	public String home(Model model) 
	{	
		System.out.println("this is home url");
		
		model.addAttribute("name", "DibyaJyoti");
		model.addAttribute("id", 346718);
		
		List<String> friends = new ArrayList<String>();
		friends.add("RP");
		friends.add("JS");
		
		model.addAttribute("f", friends);
		
		return "index";
	}
	
	@RequestMapping("/about")
	public String about() 
	{
		System.out.println("this is about url");
		return "about";
	}
	
	@RequestMapping("/help")
	public ModelAndView help() 
	{
		System.out.println("This is Help Controller");
		//Creating Model And View Object
		ModelAndView modelAndview = new ModelAndView();
		
		//setting the data
		modelAndview.addObject("name", "RKP Ang");
		modelAndview.addObject("rollnumber", 260195);
		LocalDateTime now = LocalDateTime.now();
		modelAndview.addObject("time", now);
		
		//marks collection
		List<Integer> list = new ArrayList<Integer>();
		list.add(183);
		list.add(654);
		list.add(258);
		list.add(457);
		modelAndview.addObject("marks", list);
		
		//setting the view name
		modelAndview.setViewName("help");
		return modelAndview;
	}
}
