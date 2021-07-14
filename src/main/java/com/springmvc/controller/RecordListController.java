package com.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.model.EntityModel;
import com.springmvc.dao.EntityDao;

@Controller
public class RecordListController {
	
	@Autowired
	EntityDao entityDao;
	
	@RequestMapping("/recordlist")
	public ModelAndView welcomeAgain(ModelAndView model) {
		List<EntityModel> list = entityDao.getEntities();
		model.addObject("listEntity",list);
		model.setViewName("recordlist");
				
		return model;
	}

}
