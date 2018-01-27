package com.hard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value = "/log", method = RequestMethod.GET)
	public ModelAndView openLogin(Model model) {
		model.addAttribute("title", "Login");
		return new ModelAndView("login");
	}

	@RequestMapping(value = "/wel", method = RequestMethod.GET)
	public ModelAndView openWelcome(Model model) {
		model.addAttribute("title",
				"Welcome - Hardware Inventory Managment Software");
		return new ModelAndView("welcome");
	}
}
