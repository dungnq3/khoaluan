package controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.CategoriesDAO;
import dao.NewsDAO;
import dao.UsersDAO;
import utils.SlugUtils;

@Controller
public class PublicCategoriesController {
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
		modelMap.addAttribute("newList",newsDAO.getNewItems());
		if(principal != null){
			modelMap.addAttribute("logged",userDAO.getItem(principal.getName()));
		}
	}
	
	@RequestMapping("/{slug}-{id}")
	public String index(ModelMap modelMap,@PathVariable("id") int id_cat,@RequestParam(value="page", defaultValue="1") int page, @RequestParam(value="row_count", defaultValue="10")int row_count) {
		modelMap.addAttribute("objCat",catDAO.getItem(id_cat));
		int offset = (page - 1) * row_count;
		modelMap.addAttribute("listNews",newsDAO.getItems(id_cat,offset,row_count));
		int total = (int)Math.ceil((float)newsDAO.countItems(id_cat)/row_count);
		modelMap.addAttribute("total",total);
		return "public.categories.index";
	}
}
