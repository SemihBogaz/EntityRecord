package com.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.model.EntityModel;
import com.springmvc.dao.EntityDao;

@Controller
public class NewRecordController {
	
	@Autowired
	EntityDao entityDao;
	
	@RequestMapping("/newrecord")
	public String newRecord(Model model) {
		model.addAttribute("command",new EntityModel());
		return "newrecord";
	}
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String saveEntity(@ModelAttribute("entity") EntityModel entityModel) {
		entityDao.save(entityModel);
		return "redirect:/recordlist";	
	}

}
