package com.AlgeriePoste.GestionFormation.Service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.AlgeriePoste.GestionFormation.Model.Employe;
import com.AlgeriePoste.GestionFormation.Model.Role;
import com.AlgeriePoste.GestionFormation.Model.Utilisateur;
import com.AlgeriePoste.GestionFormation.Repository.EmployeRepository;
import com.AlgeriePoste.GestionFormation.Repository.RoleRepository;
import com.AlgeriePoste.GestionFormation.Repository.UtilisateurRepository;

@Service
public class UtilisateurService {
	
	@Autowired 
	private UtilisateurRepository utilisateurRepository;
	@Autowired
	private RoleRepository roleRepository;
	@Autowired
	private EmployeRepository employeRepository;
	
	public List<Utilisateur> findAll(){
		
		return utilisateurRepository.findAll();
	}	
	@PostConstruct
	public void init() throws ParseException{
//		String string = "December 21, 1992";
//		DateFormat format = new SimpleDateFormat("MMMM d, yyyy", Locale.ENGLISH);
//		Date date1 = format.parse(string);
//		String string2 = "December 21, 2017";
//		Date date2 = format.parse(string2);
//	Employe emlpoye = new Employe("Boutadjine", "Anis", "Directeur",date1, "DRHF", date2);
//	employeRepository.save(emlpoye);
		List<Role> roles= new ArrayList<Role>();
		Role roleAdmin= new Role();
		roleAdmin.setName("ROLE_ADMIN");
		roleRepository.save(roleAdmin);
		
		Role roleUser= new Role();
		roleUser.setName("ROLE_USER");
		roleRepository.save(roleUser);
		
		roles.add(roleAdmin);
		roles.add(roleUser);

		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		Utilisateur user= new Utilisateur("admin",encoder.encode("admin"));
		
		user.setEnabled(true);
		user.setRoles(roles);
//		user.setEmploye(emlpoye);
		utilisateurRepository.save(user);
	}
	public void ajouterUser(Utilisateur user) {
		user.setEnabled(true);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		user.setMotDePasse(encoder.encode(user.getMotDePasse()));
		Role role= new Role();
		role=roleRepository.findByName("ROLE_USER");
		List<Role> roles= new ArrayList<Role>();
		roles.add(role);
		user.setRoles(roles);
		utilisateurRepository.save(user);
		
		
	}
	@Transactional
	public List<Utilisateur> findAllWithRoles() {

		List<Utilisateur> users =new ArrayList<Utilisateur>();
		users=findAll();
		List<Utilisateur> usersWithRoles =new ArrayList<Utilisateur>();
		
		for (Utilisateur user : users) {
			List<Role> roles =roleRepository.findAll();
			
			user.setRoles(roles);	
			usersWithRoles.add(user);
		}
		
		return usersWithRoles;
	}
	@Transactional
	public Utilisateur findOneByRoles(Long id){
		Utilisateur user=utilisateurRepository.findByIdUtilisateur(id);
		List<Role> roles =roleRepository.findAll();
		user.setRoles(roles);
		
		return user;
		
	}
	@Transactional
	public void supprimerOne(Long id) {
		utilisateurRepository.delete(id);
	}
	
	public Utilisateur findOne (String nomUtilisateur){
		return utilisateurRepository.findByNomUtilisateur(nomUtilisateur);
	}
	
	
	
	
	
	

}
