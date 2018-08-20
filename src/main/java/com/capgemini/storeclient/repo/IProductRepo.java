package com.capgemini.storeclient.repo;



import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.capgemini.storeclient.beans.Merchant;
import com.capgemini.storeclient.beans.Product;



public interface IProductRepo extends JpaRepository<Product, Integer>, CrudRepository<Product, Integer>{
	@Transactional
	@Query("SELECT p FROM Product p WHERE p.merchant =:merchantId")
	public List<Product> getAllproducts(@Param("merchantId")Merchant merchant);
	@Transactional
	  @Modifying
	@Query("UPDATE Product p set p.productName =:name,  p.brand =:brand,p.productQuantityAvailable =:quantity, p.productPrice =:price, p.productDesc =:desc,p.productStatus =:status WHERE p.productId =:id")
	public void updateProduct(@Param("id")int id,@Param("name")String name,@Param("brand")String brand,@Param("quantity")int quantity,@Param("price")double price,@Param("desc")String desc,@Param("status")boolean status);


}
