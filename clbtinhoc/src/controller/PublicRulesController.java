package controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.CategoriesDAO;
import dao.RulesDAO;
import dao.UsersDAO;
import utils.SlugUtils;

@Controller
public class PublicRulesController {
	@Autowired
	private RulesDAO rulesDAO;
	@Autowired
	private UsersDAO userDAO;
	
	@Autowired
	private CategoriesDAO catDAO;
	@Autowired
	private SlugUtils slugUtils;
	
	@ModelAttribute
	public void addCommon(ModelMap modelMap,Principal principal){
		modelMap.addAttribute("lCat",catDAO.getItems());
		modelMap.addAttribute("slug",slugUtils);
		if(principal != null){
			modelMap.addAttribute("logged",userDAO.getItem(principal.getName()));
		}
	}
	
	@RequestMapping("/noi-quy")
	public String index(ModelMap modelMap){
		modelMap.addAttribute("objRule",rulesDAO.getItem());
		return "public.rules.index";
	}
}
