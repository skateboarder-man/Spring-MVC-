package co.nestors.user.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String template() throws Exception {
		ModelAndView mav = new ModelAndView();
		return "main.page";
	}

}
