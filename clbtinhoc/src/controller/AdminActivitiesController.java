package controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.ActivitiesDAO;
import entities.Activity;

@Controller
public class AdminActivitiesController {
	@Autowired
	private ActivitiesDAO activitiesDAO;
	
	@RequestMapping("/admin/activities")
	public String index(ModelMap modelMap, @RequestParam(value="page", defaultValue="1") int page, @RequestParam(value="row_count", defaultValue="5")int row_count){
		int offset = (page - 1)*row_count;
		modelMap.addAttribute("listActivities",activitiesDAO.getItems(offset,row_count));
		
		int total = (int)Math.ceil((float)activitiesDAO.countItems()/row_count);
		
		modelMap.addAttribute("total", total);
		
		return "admin.activities.index";
	}
	
	@RequestMapping("/admin/activities/add")
	public String add(){
		return "admin.activities.add";
	}
	
	@RequestMapping(value="/admin/activities/add", method=RequestMethod.POST)
	public String add(@Valid @ModelAttribute("objActivity") Activity activity,BindingResult bindingResult){
		if(bindingResult.hasErrors()){
			return "admin.activities.add";
		}
		
		if(activitiesDAO.addItem(activity) > 0){
			return "redirect:/admin/activities?msg=add-success";
		}
		return "redirect:/admin/activities?msg=add-error";
	}
	
	@RequestMapping("/admin/activities/edit/{id}")
	public String edit(ModelMap modelMap,@PathVariable("id")int id){
		Activity activity = activitiesDAO.getItem(id);
		modelMap.addAttribute("objActivity",activity);
		return "admin.activities.edit";
	}
	@RequestMapping(value="/admin/activities/edit/{id}",method=RequestMethod.POST)
	public String edit(@PathVariable("id") int id,@Valid @ModelAttribute("objActivity") Activity activity, BindingResult bindingResult){
		if(bindingResult.hasErrors()){
			return "admin.activities.edit";
		}
		activity.setId(id);
		if(activitiesDAO.editItem(activity)>0){
			return "redirect:/admin/activities?msg=edit-success";
		}
		return "redirect:/admin/activities?msg=edit-error";
	}
	@RequestMapping("/admin/activities/del/{id}")
	public String del(@PathVariable("id")int id){
		
		if(activitiesDAO.delItem(id)>0){
			return "redirect:/admin/activities?msg=del-success";
		}
		return "redirect:/admin/activities?msg=del-error";
	}
	
	@RequestMapping("/admin/activities/history")
	public String history(ModelMap modelMap, @RequestParam(value="page", defaultValue="1") int page, @RequestParam(value="row_count", defaultValue="5")int row_count){
		int offset = (page - 1)*row_count;
		modelMap.addAttribute("listActivities",activitiesDAO.getItems(offset,row_count));
		
		int total = (int)Math.ceil((float)activitiesDAO.countItems()/row_count);
		
		modelMap.addAttribute("total", total);
		
		return "admin.activities.history";
	}
	
	@RequestMapping("/admin/activities/history/{id}")
	public String detail(@PathVariable("id") int id,ModelMap modelMap){
		modelMap.addAttribute("activity_name", activitiesDAO.getItem(id).getTitle());
		modelMap.addAttribute("listActivityUsers", activitiesDAO.getItems(id));
		return "admin.activities.detail";
	}
}