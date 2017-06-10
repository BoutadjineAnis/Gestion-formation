package com.AlgeriePoste.GestionFormation;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.AlgeriePoste.GestionFormation.Model.Utilisateur;
import com.AlgeriePoste.GestionFormation.Service.UtilisateurService;



/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private UtilisateurService userService;
	
	@ModelAttribute("user")
	public Utilisateur constract(){
		return new Utilisateur();
	}
		
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home( Model model) {
		
		model.addAttribute("users",userService.findAll());
		return "afficherUtilisateurs";
	}
		
	
	
}
