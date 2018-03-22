package controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ActivitiesDAO;
import dao.UsersDAO;

@Controller
public class AdminHomeController {
	@Autowired
	private UsersDAO userDAO;
	@Autowired
	private ActivitiesDAO activitiesDAO;
	
	@ModelAttribute
	public void addCommon(HttpServletRequest request, Principal principal){
		request.getSession().setAttribute("principal", userDAO.getItem(principal.getName()));
	}
	
	@RequestMapping("/admin")
	public String index(ModelMap modelMap){
		modelMap.addAttribute("totalActivities", activitiesDAO.getTotal());
		return "admin.home.index";
	}
}
