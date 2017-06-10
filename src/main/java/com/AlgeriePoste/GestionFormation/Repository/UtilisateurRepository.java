package com.AlgeriePoste.GestionFormation.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.AlgeriePoste.GestionFormation.Model.Utilisateur;

public interface UtilisateurRepository extends JpaRepository<Utilisateur, Long> {

	Utilisateur findByIdUtilisateur(Long idUtilisateur);
	Utilisateur findByNomUtilisateur(String nomUtilisateur);
	
	

}
