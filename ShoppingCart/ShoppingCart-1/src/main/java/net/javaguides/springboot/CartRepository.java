package net.javaguides.springboot;

import org.springframework.data.jpa.repository.JpaRepository;

import net.javaguides.springboot.Cart;

public interface CartRepository extends JpaRepository<Cart, Integer> {
	 
	}

