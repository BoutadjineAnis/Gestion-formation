package com.AlgeriePoste.GestionFormation.Model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

import com.AlgeriePoste.GestionFormation.Annotation.UniqueUtilisateur;


@Entity
public class Utilisateur implements Serializable  {

		/**
	 * 
	 */
	
		@Id 
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private Long idUtilisateur;
		
		@Email(message="inserer un email valide")
		@Size(min=1,message="le champ email est obligatoire")
		private String email;
		
		@Size(min=1,message="le champ nom d'utilisateur est obligatoire")
		@UniqueUtilisateur(message="tel utilisateur existe déjà")
		private String nomUtilisateur;
		@Size(min=1,message="le champ mot de passe est obligatoire")

		private String motDePasse;
		@ManyToMany
		@JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns =
		@JoinColumn(name = "role_id"))
				private List<Role> roles;
//		@OneToOne
//		private Employe employe;
		
		private Boolean enabled;
		
		
		public Long getIdUtilisateur() {
			return idUtilisateur;
		}
		public void setIdUtilisateur(Long idUtilisateur) {
			idUtilisateur = idUtilisateur;
		}
		
		
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		
		public Boolean getEnabled() {
			return enabled;
		}
		public void setEnabled(Boolean enabled) {
			this.enabled = enabled;
		}
		
		public List<Role> getRoles() {
			return roles;
		}
		public void setRoles(List<Role> roles) {
			this.roles = roles;
		}
		
		public String getNomUtilisateur() {
			return nomUtilisateur;
		}
		public void setNomUtilisateur(String NomUtilisateur) {
			nomUtilisateur = NomUtilisateur;
		}
		public String getMotDePasse() {
			return motDePasse;
		}
		public void setMotDePasse(String MotDePasse) {
			motDePasse = MotDePasse;
		}
		public Utilisateur(String NomUtilisateur, String MotDePasse) {
			super();
			nomUtilisateur = NomUtilisateur;
			motDePasse = MotDePasse;
		}
		public Utilisateur() {
			super();
			// TODO Auto-generated constructor stub
		}
		
		
}
