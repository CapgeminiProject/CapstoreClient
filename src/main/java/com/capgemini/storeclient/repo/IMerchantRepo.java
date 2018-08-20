package com.capgemini.storeclient.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.capgemini.storeclient.beans.Merchant;



public interface IMerchantRepo extends JpaRepository<Merchant, Integer>{
	@Query("SELECT m FROM Merchant m WHERE m.email =:username")
	public Merchant findByUsername(@Param("username") String username);
}
