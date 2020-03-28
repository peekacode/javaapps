package com.peekatech.contact.controller;

import java.security.Principal;
import java.util.List;

import javax.sql.DataSource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.peekatech.contact.dao.ContactDAO;
import com.peekatech.contact.model.Contact;
import com.peekatech.todo.Todo;

@Controller
public class ContactController {
	
	@Autowired
	private ContactDAO contactDAO;
	
	@RequestMapping(value = "/contact-manager", method = RequestMethod.GET)
	public String showContactList(ModelMap model,Principal principal) {
		List<Contact> listContact = contactDAO.list();
		model.addAttribute("listContact", listContact);
		return "contact-manager";
	}
	
	@RequestMapping(value = "/new-contact", method = RequestMethod.GET)
	public String showNewContactPage(ModelMap model,Principal principal) {
		Contact newContact = new Contact();
		model.addAttribute("contact", newContact);
		System.out.println(model);
		return "new-contact";
	}

	@RequestMapping(value = "/new-contact", method = RequestMethod.POST)
	public String saveContact(ModelMap model,@Valid Contact contact, BindingResult result, Principal principal) {		
		if (result.hasErrors()) return "new-contact";
		contactDAO.save(contact);
		//model.clear();// to prevent request parameter "name" to be passed
		return "redirect:/contact-manager";
	}
	
	@RequestMapping(value = "/update-contact", method = RequestMethod.GET)
	public String getContactToUpdate(ModelMap model, @RequestParam int id, Principal principal) {
		Contact getContact = contactDAO.get(id);
		model.addAttribute("contact", getContact);
		return "new-contact";
	}
	
	@RequestMapping(value = "/update-contact", method = RequestMethod.POST)
	public String updateContact(ModelMap model, @Valid Contact contact, BindingResult result) {
		if (result.hasErrors())
			return "new-contact";
		contactDAO.update(contact);

		model.clear();// to prevent request parameter "name" to be passed
		return "redirect:/contact-manager";
	}
	
	@RequestMapping(value = "/delete-contact", method = RequestMethod.GET)
	public String deleteContact(@RequestParam int id) {
		contactDAO.delete(id);

		return "redirect:/contact-manager";
	}	

}
