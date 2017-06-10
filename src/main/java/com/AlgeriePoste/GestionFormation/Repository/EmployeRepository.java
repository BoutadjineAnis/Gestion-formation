package com.AlgeriePoste.GestionFormation.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.AlgeriePoste.GestionFormation.Model.Employe;

public interface EmployeRepository extends JpaRepository<Employe, Long> {

}
