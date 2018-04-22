package controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.CategoriesDAO;
import dao.NewsDAO;
import dao.UsersDAO;
import utils.SlugUtils;

@Controller
public class PublicNewsController {
	@Autowired
	private NewsDAO newsDAO;
	@Autowired
	private CategoriesDAO catDAO;
	@Autowired
	private UsersDAO userDAO;
	@Autowired
	private SlugUtils slugUtils;
	@ModelAttribute
	public void addCommon(ModelMap modelMap,Principal principal){
		modelMap.addAttribute("lCat",catDAO.getItems());
		modelMap.addAttribute("slug",slugUtils);
		modelMap.addAttribute("chunhiem",userDAO.getAdmin());
		if(principal != null){
			modelMap.addAttribute("logged",userDAO.getItem(principal.getName()));
		}
	}
	
	@RequestMapping("/{slug}-{cid}/{slug2}-{nid}")
	public String index(ModelMap modelMap,@PathVariable("nid") int id_news,@PathVariable("cid") int id_cat) {
		modelMap.addAttribute("objCat",catDAO.getItem(id_cat));
		newsDAO.setView(id_news);
		modelMap.addAttribute("objNews",newsDAO.getItem(id_news));
		modelMap.addAttribute("newList",newsDAO.getNewItems());
		
		return "public.news.index";
	}
}