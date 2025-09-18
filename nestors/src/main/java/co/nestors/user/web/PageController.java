package co.nestors.user.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	
	@GetMapping("/")
	public String template() throws Exception {
		return "login.page";
	}
	
	@GetMapping("/register")
	public String register() throws Exception {
		return "register.page";
	}


}
