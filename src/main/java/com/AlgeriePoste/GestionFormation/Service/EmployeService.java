package com.AlgeriePoste.GestionFormation.Service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;

import com.AlgeriePoste.GestionFormation.Model.Employe;
import com.AlgeriePoste.GestionFormation.Repository.EmployeRepository;

public class EmployeService {
	
	@Autowired
	private EmployeRepository employeRepository;
	
	
	public void addEmploye (Employe employe){
		
		employeRepository.save(employe);
	}
	
	@PostConstruct
	public void init() throws ParseException{

	
		
	}
}
