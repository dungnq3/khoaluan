package controller;

import java.sql.Timestamp;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.CategoriesDAO;
import dao.UsersDAO;
import entities.User;
import utils.SlugUtils;

@Controller
public class AuthController {
	@Autowired
	private UsersDAO userDAO;
	@Autowired
	private CategoriesDAO catDAO;
	@Autowired
	private SlugUtils slugUtils;
	@ModelAttribute
	public void addCommon(ModelMap modelMap){
		modelMap.addAttribute("lCat",catDAO.getItems());
		modelMap.addAttribute("slug",slugUtils);
	}
	
	@RequestMapping("/login")
	public String index(ModelMap modelMap){
		return "admin.auth.index";
	}
	
	@RequestMapping("/register")
	public String register(){
		return "admin.auth.register";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String register(@Valid @ModelAttribute("objUser") User user,BindingResult bindingResult){
		if(bindingResult.hasErrors()){
			return "admin.auth.register";
		}
		
		if(userDAO.checkUserExist(user.getUsername()) > 0){
			return "redirect:/register?msg=exist";
		}
		
		user.setId_role(1);
		user.setCreated_at(new Timestamp(System.currentTimeMillis()));
		
		if(userDAO.addItem(user) > 0){
			return "redirect:/login?msg=register-success";
		}
		return "redirect:/login?msg=register-fail";
	}
	
	@RequestMapping("/403")
	public String error(){
		return "admin.auth.403";
	}
}
