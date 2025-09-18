package co.nestors.user.web;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;

@Controller
@RestController
@RequestMapping(value = "/main")
@RequiredArgsConstructor
public class UserController {
	
	
	@GetMapping("/login.do")
	public ModelAndView login() throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login/login");
		return mav;
	}

}
