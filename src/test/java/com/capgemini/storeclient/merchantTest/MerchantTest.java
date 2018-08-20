package com.capgemini.storeclient.merchantTest;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.capgemini.storeclient.beans.Merchant;
import com.capgemini.storeclient.beans.Product;
import com.capgemini.storeclient.exceptions.ProductNotFoundException;
import com.capgemini.storeclient.repo.IMerchantRepo;
import com.capgemini.storeclient.repo.IProductRepo;
import com.capgemini.storeclient.services.IMerchantService;
import com.capgemini.storeclient.services.MerchantServiceImpl;


public class MerchantTest {
	
	IMerchantService service;
	
	@Mock
	IProductRepo repo;

	@Mock
	IMerchantRepo repo2;
	Product product1;
	Merchant merchant1;
	
	@Before
	public void setUp() throws ProductNotFoundException {
		
		MockitoAnnotations.initMocks(this);
		service=new MerchantServiceImpl(repo,repo2);
	}
	
	@Test
	public void addProduct() throws ProductNotFoundException {
		
		Product product=new Product();
		product.setBrand("Phone");
		product.setCartQuantity(8);
		product.setProductDesc("Phone");
		product.setProductName("Phone");
		product.setProductPrice(98980980);
		service.addProduct(product);
	}
	@Test
	public void addMerchant() {
		
		Merchant merchant=new Merchant();
		merchant.setEmail("abha@gmail.com");
		merchant.setMerchantName("Abhilasha");
		merchant.setPassword("abha123456");
		merchant.setPhoneNumber("9579405742");
		service.addMerchant(merchant);
	}
}