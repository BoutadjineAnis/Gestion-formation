package com.AlgeriePoste.GestionFormation.Annotation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import javax.validation.constraints.Null;

import org.springframework.beans.factory.annotation.Autowired;

import com.AlgeriePoste.GestionFormation.Repository.UtilisateurRepository;

public class UniqueUtilisateurValidator implements ConstraintValidator<UniqueUtilisateur,String> {

	@Autowired
	private UtilisateurRepository utilisateurRepository ;
	
	@Override
	public void initialize(UniqueUtilisateur constraintAnnotation) {
	}

	@Override
	public boolean isValid(String nomUtilisateur, ConstraintValidatorContext context) {
		if (utilisateurRepository==null) {
			return true;
			
		}
		return utilisateurRepository.findByNomUtilisateur(nomUtilisateur)==null;
	}

}
