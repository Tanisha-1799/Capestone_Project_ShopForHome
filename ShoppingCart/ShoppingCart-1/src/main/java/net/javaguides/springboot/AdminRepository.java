package net.javaguides.springboot;

import org.springframework.data.jpa.repository.JpaRepository;

import net.javaguides.springboot.Admin;

public interface AdminRepository extends JpaRepository<Admin, Integer> {
	 
	}

