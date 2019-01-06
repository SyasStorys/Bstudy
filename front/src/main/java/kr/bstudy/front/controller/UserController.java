package kr.bstudy.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping(value="/user")
@Controller
public class UserController {

	@RequestMapping(value="/register")
	public ModelAndView register() {
		
		ModelAndView mv = new ModelAndView("index");
		
		mv.addObject("title", "Bstudy 회원가입");
		mv.addObject("userClickRegister", true);
				
		
		return mv;
	}
}
