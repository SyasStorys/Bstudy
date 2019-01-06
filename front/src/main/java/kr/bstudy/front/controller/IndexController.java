package kr.bstudy.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

	@RequestMapping(value={"/","/home","/index"})
	public ModelAndView indexPage() {
		
		ModelAndView mv = new ModelAndView("index");
		
		mv.addObject("title", "Bstudy Page");
		mv.addObject("userClickHome", true);
		
		return mv;
		
	}
	
}
