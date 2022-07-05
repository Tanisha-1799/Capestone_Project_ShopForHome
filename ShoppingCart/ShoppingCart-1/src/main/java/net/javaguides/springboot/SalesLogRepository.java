package net.javaguides.springboot;


import org.springframework.data.jpa.repository.JpaRepository;

public interface SalesLogRepository extends JpaRepository<SalesLog, Integer> {
	 
	}
