package com.AlgeriePoste.GestionFormation;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.AlgeriePoste.GestionFormation.Model.Utilisateur;
import com.AlgeriePoste.GestionFormation.Service.UtilisateurService;

@Controller
//@RequestMapping(value="/utilisateurs")
public class UtilisateursController {
	
	@Autowired
	private UtilisateurService userService;
	
	@ModelAttribute("user")
	public Utilisateur constract(){
		return new Utilisateur();
	}
	
	@RequestMapping(value = "/utilisateurs/afficherUtilisateurs", method = RequestMethod.GET)
	public String afficherUsers( Model model) {
		
//		model.addAttribute("users",userService.findAllWithRoles());
		model.addAttribute("users",userService.findAll());
		
		return "afficherUtilisateurs";
	}
	
	@RequestMapping(value = "/utilisateurs/ajouterUtilisateur", method = RequestMethod.GET)
	public String jouterUser (Model model){
		return "ajouterUtilisateur";
	}
	
	@RequestMapping(value = "/utilisateurs/ajouterUtilisateur", method = RequestMethod.POST)
	public String DoAjouterUser (@Valid @ModelAttribute("user") Utilisateur user, BindingResult result){
		
		if (result.hasErrors()) {
			return "ajouterUtilisateur";
			
		}
		userService.ajouterUser(user);		
		return "redirect:/utilisateurs/afficherUtilisateurs";
	}
	
	@RequestMapping(value="/utilisateurs/supprimer/{id}")
	public String supprimerUtilisateur(@PathVariable Long id){
		userService.supprimerOne(id);
	
	return "redirect:/utilisateurs/afficherUtilisateurs";
	}
	
	@RequestMapping(value="/utilisateurs/disponible")
	@ResponseBody
	public String nomUtilisateurDispo (@RequestParam String nomUtilisateur){
		Boolean dispo=userService.findOne(nomUtilisateur)==null;
		return dispo.toString() ;
	}

}
