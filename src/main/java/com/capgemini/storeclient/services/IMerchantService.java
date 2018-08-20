package com.capgemini.storeclient.services;

import java.util.List;

import com.capgemini.storeclient.beans.Merchant;
import com.capgemini.storeclient.beans.Product;
import com.capgemini.storeclient.exceptions.MerchantNotFoundException;
import com.capgemini.storeclient.exceptions.ProductNotFoundException;


public interface IMerchantService {
	public Merchant addMerchant(Merchant merchant);
	public Merchant updateMerchant(Merchant merchant);
	public Merchant deleteMerchant(String username);
	public Merchant getMerchant(String username) throws MerchantNotFoundException;
	public Merchant getMerchantById(int merchantId);
	public void changePassword(Merchant merchant,String password);
	
	
	public Product addProduct(Product product) throws ProductNotFoundException;
	public List<Product> getAllProducts(int merchantId);
	public void updateProduct(Product product)throws ProductNotFoundException;
	public Product getProductDetails(int productId);
	public void removeProduct(Product product);
	public Merchant findMerchantId(int merchantId);
	public Product findProductById(int productId)throws ProductNotFoundException;	
}
