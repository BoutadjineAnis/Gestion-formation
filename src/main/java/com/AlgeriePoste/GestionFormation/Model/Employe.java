package com.AlgeriePoste.GestionFormation.Model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Employe implements Serializable {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long IdEmploye;
	
	private String matricule;
	private String nom;
	private String prenom;
	public Employe(String nom, String prenom, String fonction, Date date_naissance, String service,
			Date date_recrutement) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.fonction = fonction;
		this.date_naissance = date_naissance;
		this.service = service;
		this.date_recrutement = date_recrutement;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	private String fonction;
	private Date date_naissance;
	private String service;
	private Date date_recrutement;
	
	@OneToOne
	private Utilisateur compte;
	
	public Utilisateur getCompte() {
		return compte;
	}
	public void setCompte(Utilisateur compte) {
		this.compte = compte;
	}
	
	
	
	public Employe() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Long getIdEmploye() {
		return IdEmploye;
	}
	public void setIdEmploye(Long idEmploye) {
		IdEmploye = idEmploye;
	}
	public String getMatricule() {
		return matricule;
	}
	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}
	
	public String getFonction() {
		return fonction;
	}
	public void setFonction(String fonction) {
		this.fonction = fonction;
	}
	public Date getDate_naissance() {
		return date_naissance;
	}
	public void setDate_naissance(Date date_naissance) {
		this.date_naissance = date_naissance;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public Date getDate_recrutement() {
		return date_recrutement;
	}
	public void setDate_recrutement(Date date_recrutement) {
		this.date_recrutement = date_recrutement;
	}
	
	

}
