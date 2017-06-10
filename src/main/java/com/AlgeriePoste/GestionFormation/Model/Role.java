package com.AlgeriePoste.GestionFormation.Model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Role {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long idRole;
	
	private String name;
	@ManyToMany(mappedBy="roles")
	private List<Utilisateur> users;
	public Role() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Long getIdRole() {
		return idRole;
	}

	public void setIdRole(Long idRole) {
		this.idRole = idRole;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Utilisateur> getUsers() {
		return users;
	}
	public void setUsers(List<Utilisateur> users) {
		this.users = users;
	}
	

}
