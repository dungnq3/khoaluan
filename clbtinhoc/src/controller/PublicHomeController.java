package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import utils.Defines;
import utils.SlugUtils;

@Controller
public class PublicHomeController {
	@Autowired
	private SlugUtils slugUtils;
	
	@RequestMapping("/")
	public String index(ModelMap modelMap){
		return "public.clbtinhoc.index";
	}
}
