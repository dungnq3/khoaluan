package controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.CategoriesDAO;
import dao.NewsDAO;
import dao.UsersDAO;
import entities.Category;
import entities.News;
import utils.SlugUtils;

@Controller
public class PublicHomeController {
	@Autowired
	private CategoriesDAO catDAO;
	@Autowired
	private NewsDAO newsDAO;
	@Autowired
	private UsersDAO userDAO;
	@Autowired
	private SlugUtils slugUtils;
	

	@ModelAttribute
	public void addCommon(ModelMap modelMap,Principal principal){
		modelMap.addAttribute("lCat",catDAO.getItems());
		modelMap.addAttribute("slug",slugUtils);
		modelMap.addAttribute("chunhiem",userDAO.getAdmin());
		modelMap.addAttribute("newList",newsDAO.getNewItems());
		if(principal != null){
			modelMap.addAttribute("logged",userDAO.getItem(principal.getName()));
		}
	}
	
	@RequestMapping("/")
	public String index(ModelMap modelMap){
		List<Category> listCat = catDAO.getItems();
		modelMap.addAttribute("listCat",listCat);
		List<News> listNews = new ArrayList<>();
		for(int i = 0;i<listCat.size();i++){
			listNews.addAll(newsDAO.getLimitItems(listCat.get(i).getId()));
		}
		modelMap.addAttribute("listNews",listNews);
		
		
		
		return "public.clbtinhoc.index";
	}
}
