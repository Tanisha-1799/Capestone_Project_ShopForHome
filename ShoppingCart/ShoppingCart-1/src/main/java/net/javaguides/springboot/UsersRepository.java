package net.javaguides.springboot;

import org.springframework.data.jpa.repository.JpaRepository;
 
public interface UsersRepository extends JpaRepository<Users, Integer> {
 
}