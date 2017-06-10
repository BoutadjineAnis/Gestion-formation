package com.AlgeriePoste.GestionFormation.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.AlgeriePoste.GestionFormation.Model.Role;
import com.AlgeriePoste.GestionFormation.Model.Utilisateur;

public interface RoleRepository extends JpaRepository<Role, Integer> {

	Role findByName(String name);
	Role findByIdRole(Long id);
   List<Role> findByUsers(List<Utilisateur> utilisateurs);

}
