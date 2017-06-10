package com.AlgeriePoste.GestionFormation.Annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import static java.lang.annotation.ElementType.*;
import static java.lang.annotation.ElementType.PARAMETER;
import static java.lang.annotation.RetentionPolicy.RUNTIME;
import javax.validation.Constraint;
import javax.validation.Payload;

import javax.validation.Constraint;

@Target({ FIELD})
@Retention(RUNTIME)
@Constraint(validatedBy = {UniqueUtilisateurValidator.class})
public @interface UniqueUtilisateur {
	
String message() ;
	
	Class<?>[] groups() default {};

	Class<? extends Payload>[] payload() default {};
	

}
