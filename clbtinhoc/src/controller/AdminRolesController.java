package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.PermissionDAO;
import dao.RolesDAO;
import dao.UsersDAO;
import entities.Roles;
import entities.User;
import utils.StringUtils;

@Controller
public class AdminRolesController {

	@Autowired
	private RolesDAO rolesDAO;
	@Autowired
	private UsersDAO usersDAO;
	@Autowired
	private PermissionDAO permissionDAO;
	@Autowired
	private StringUtils stringUtils;

	@RequestMapping("/admin/roles")
	public String index(ModelMap modelMap, @RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam(value = "row_count", defaultValue = "10") int row_count) {
		int offset = (page - 1) * row_count;
		modelMap.addAttribute("listRoles", rolesDAO.getSortedItems(offset, row_count));
		int total = (int) Math.ceil((float) rolesDAO.countItems() / row_count);
		modelMap.addAttribute("total", total);
		return "admin.roles.index";
	}

	@RequestMapping("/admin/roles/add")
	public String add() {
		return "admin.roles.add";
	}

	@RequestMapping(value = "/admin/roles/add", method = RequestMethod.POST)
	public String add(ModelMap modelMap, @ModelAttribute("Roles") Roles objRole, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "admin.roles.add";
		}
		objRole.setRole(stringUtils.html2text(objRole.getRole()));
		if (rolesDAO.checkExistByName(objRole.getRole()) > 0) {
			return "redirect:/admin/roles/add?msg=exist";
		}
		if (rolesDAO.addItem(objRole) > 0) {
			return "redirect:/admin/roles?msg=add-success";
		}
		return "redirect:/admin/roles?msg=add-error";
	}

	@RequestMapping("/admin/roles/edit/{id}")
	public String edit(@PathVariable("id") int id, ModelMap modelMap) {
		Roles objRole = rolesDAO.getItem(id);
		if (objRole.getRole().equals("CHAIRMAN") || objRole.getRole().equals("MEMBER")
				|| objRole.getRole().equals("VICE_CHAIRMAN")) {
			return "redirect:/admin/roles?msg=access-denied";
		}
		modelMap.addAttribute("objRole", objRole);
		return "admin.roles.edit";
	}

	@RequestMapping(value = "/admin/roles/edit/{id}", method = RequestMethod.POST)
	public String edit(@PathVariable("id") int id, @ModelAttribute("objRole") Roles objRole,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "admin.roles.edit";
		}
		objRole.setId(id);
		objRole.setRole(stringUtils.html2text(objRole.getRole()));
		if (rolesDAO.checkExistByName(objRole.getRole()) > 0) {
			return "redirect:/admin/roles/edit/" + id + "?msg=exist";
		}
		if (rolesDAO.editItem(objRole) > 0) {
			return "redirect:/admin/roles?msg=edit-success";
		}
		return "redirect:/admin/roles?msg=edit-error";
	}

	@RequestMapping("/admin/roles/del/{id}")
	public String del(@PathVariable("id") int id) {
		List<User> listUsers = usersDAO.getItemsByRole(id);
		if (rolesDAO.delItem(id) > 0) {
			for (User objUser : listUsers) {
				usersDAO.toMember(objUser.getId(), 1);
			}
			return "redirect:/admin/roles?msg=del-success";
		}
		return "redirect:/admin/roles?msg=del-error";
	}

	@RequestMapping("/admin/roles/{id}/permissions")
	public String permission(ModelMap modelMap, @PathVariable("id") int id) {
		modelMap.addAttribute("objRole", rolesDAO.getItem(id));
		modelMap.addAttribute("listPermissions", permissionDAO.getItems(id));
		return "admin.roles.permission";
	}
	
	@RequestMapping("/admin/roles/{id}/permissions/add")
	public String addPer(ModelMap modelMap, @PathVariable("id") int id) {
		modelMap.addAttribute("listPermis",permissionDAO.getOtherItems(id));
		return "admin.permission.add";
	}
	
	@RequestMapping(value="/admin/roles/{id}/permissions/add", method=RequestMethod.POST)
	public String addPer(@PathVariable("id") int id ) {
		return "admin.permission.add";
	}
	
	@RequestMapping("/admin/roles/{id}/permissions/del")
	public String delPer(ModelMap modelMap, @PathVariable("id") int id) {
		modelMap.addAttribute("objRole", rolesDAO.getItem(id));
		modelMap.addAttribute("listPermissions", permissionDAO.getItems(id));
		return "admin.roles.permission";
	}
}