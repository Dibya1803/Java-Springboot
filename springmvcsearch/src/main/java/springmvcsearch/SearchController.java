package springmvcsearch;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController {

	@RequestMapping("/home")
	public String home() 
	{
		System.out.println("Going to home View......");
		return "home";
	}
	
	@RequestMapping("/search")
	public RedirectView search(@RequestParam("querybox") String query) 
	{
		String url = "https://www.google.com/search?q="+query;
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(url);
		
		if(query.isBlank()) {
			System.out.println("Please fill all fields..");				
			return new RedirectView("home");// handling blank queries , and redirecting to "/home" handler.
		}
		return redirectView;
	}
}
