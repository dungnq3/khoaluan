package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.ContactsDAO;

@Controller
public class AdminContactsController {
	@Autowired
	private ContactsDAO contactsDAO;
	
	@RequestMapping("/admin/contacts")
	public String index(ModelMap modelMap, @RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam(value = "row_count", defaultValue = "10") int row_count){
		int offset = (page - 1) * row_count;
		modelMap.addAttribute("listContacts", contactsDAO.getItems(offset, row_count));

		int total = (int) Math.ceil((float) contactsDAO.countItems() / row_count);

		modelMap.addAttribute("total", total);
		return "admin.contacts.index";
	}
	@RequestMapping("/admin/contacts/del/{id}")
	public String del(@PathVariable("id") int id){
		if(contactsDAO.delItem(id)>0){
			return "redirect:/admin/contacts?msg=del-success";
		}
		return "redirect:/admin/contacts?msg=del-error";
	}
	@RequestMapping("/admin/contacts/{id}")
	public String detail(ModelMap modelMap,@PathVariable("id") int id){
		modelMap.addAttribute("objContact",contactsDAO.getItem(id));
		return "admin.contacts.detail";
	}
}
