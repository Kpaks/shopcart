package br.dashboard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

import br.dashboard.model.Product;
import br.dashboard.service.DashboardService;

@Controller
@RequestMapping("/")
public class DashboardController {
	
	@Autowired
	DashboardService dashboardService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
 	public String main(ModelMap model) {
		
		Gson gson = new Gson();
		model.addAttribute("producties", gson.toJson(dashboardService.getAll()));
		
		return "index";
	}
	
	@RequestMapping(value = "/form-product", method = RequestMethod.GET)
 	public String formProduct(ModelMap model) {
		
		return "form-product";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
 	public String insertProduct(ModelMap model, @ModelAttribute Product product) {
		
		Gson gson = new Gson();
		
		dashboardService.insertProduct(product);
		model.addAttribute("producties", gson.toJson(dashboardService.getAll()));
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
 	public String deleteProduct(ModelMap model, @RequestParam(value = "id", required=true) Long id) {
		
		dashboardService.deleteProduct(id);
		model.addAttribute("producties", dashboardService.getAll());
		
		return "redirect:/";
	}
	
 }