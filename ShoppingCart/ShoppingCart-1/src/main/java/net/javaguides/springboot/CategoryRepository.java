package net.javaguides.springboot;

import org.springframework.data.jpa.repository.JpaRepository;

import net.javaguides.springboot.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer> {
	 
	}

