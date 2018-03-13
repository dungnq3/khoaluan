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
import org.springframework.web.bind.annotation.RequestParam;

import dao.UsersDAO;
import entities.User;

@Controller
public class AuthController {
	@Autowired
	private UsersDAO userDAO;
	
	@RequestMapping("/login")
	public String index(ModelMap modelMap){
		return "admin.auth.index";
	}
	
	@RequestMapping("/register")
	public String register(){
		return "admin.auth.register";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String register(@Valid @ModelAttribute("objUser") User user,@RequestParam(value="role", defaultValue="MEMBER") String role ,BindingResult bindingResult){
		if(bindingResult.hasErrors()){
			return "admin.auth.register";
		}
		
		if(userDAO.checkUserExist(user.getUsername()) > 0){
			return "redirect:/register?msg=exist";
		}
		
		user.setRole(role);
		user.setCreated_at(new Timestamp(System.currentTimeMillis()));
		
		if(userDAO.addItem(user) > 0){
			System.out.println(5);
			return "redirect:/login?msg=register-success";
		}
		return "redirect:/login?msg=register-fail";
	}
	
	@RequestMapping("/403")
	public String error(){
		return "admin.auth.403";
	}
}
