package com.codingdojo.dojoandninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.dojoandninjas.models.Dojo;
import com.codingdojo.dojoandninjas.models.Ninja;
import com.codingdojo.dojoandninjas.services.DojoService;

public class DojoController {
	@Autowired
	DojoService dojoService;
	
	@GetMapping("/")
	public String index(@ModelAttribute("dojo")Dojo dojo) {
		return "index.jsp";
	}
	//CREATE DOJO
	@PostMapping("/dojo/add")
	public String addProcess(@Valid @ModelAttribute("dojo")Dojo dojo,
			BindingResult result) {
		if(result.hasErrors()) {
			return "index.jsp";
		}else {
			dojoService.saveDojo(dojo);
			return "redirect:/dojo/{id}";
		}
	}
	//VIEW DOJO WITH NINJAS
	@GetMapping("/dojo/{id}")
	public String showDojo(Model model, @PathVariable("id")Long id) {
		List<Ninja> ninjas = dojoService.allNinjas();
		model.addAttribute("ninjas", ninjas);
		return "showDojo.jsp";
	}
	
}
