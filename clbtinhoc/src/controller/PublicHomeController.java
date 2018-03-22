package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PublicHomeController {

	
	@RequestMapping("/")
	public String index(ModelMap modelMap){
		return "public.clbtinhoc.index";
	}
}
