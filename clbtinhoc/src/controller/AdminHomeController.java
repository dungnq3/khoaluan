package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import utils.Defines;
import utils.SlugUtils;

@Controller
public class AdminHomeController {
	@Autowired
	private SlugUtils slugUtils;
	
	@RequestMapping("/admin")
	public String index(ModelMap modelMap){
		return "admin.home.index";
	}
}
