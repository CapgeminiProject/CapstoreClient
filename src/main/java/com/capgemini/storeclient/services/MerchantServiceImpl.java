package com.capgemini.storeclient.services;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.yaml.snakeyaml.external.biz.base64Coder.Base64Coder;

import com.capgemini.storeclient.beans.Merchant;
import com.capgemini.storeclient.beans.Product;
import com.capgemini.storeclient.exceptions.MerchantNotFoundException;
import com.capgemini.storeclient.exceptions.ProductNotFoundException;
import com.capgemini.storeclient.repo.IMerchantRepo;
import com.capgemini.storeclient.repo.IProductRepo;
@Component("MerchantServices")
public class MerchantServiceImpl implements IMerchantService {

	@Autowired(required = true)
	IMerchantRepo repo;

	@Autowired(required= true)
	IProductRepo prepo;

	public MerchantServiceImpl(IProductRepo repo2, IMerchantRepo repo22) {
		this.repo=repo22;
		this.prepo=repo2;
	}

	@Override
	public Merchant addMerchant(Merchant merchant) {
		merchant.setAddMerchantDate(new Date());
		String pwd = Base64Coder.encodeString(merchant.getPassword());
		merchant.setPassword(pwd);
		return repo.save(merchant);
	}

	@Override
	public Product addProduct(Product product) throws ProductNotFoundException {
		try {
			if(prepo.getOne(product.getProductId()) != null){
				prepo.delete(prepo.getOne(product.getProductId()));
				return prepo.save(product);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prepo.save(product);

	}

	@Override
	public void updateProduct(Product product) throws ProductNotFoundException {

		if(prepo.findById(product.getProductId())==null)
			throw new ProductNotFoundException("product not found");
		prepo.updateProduct(product.getProductId(), product.getProductName(), product.getBrand(), product.getProductQuantityAvailable(), product.getProductPrice(), product.getProductDesc(), product.isProductStatus());
	}

	@Override
	public Product getProductDetails(int productId) {

		return prepo.getOne(productId);
	}

	@Override
	public void removeProduct(Product product) {
		prepo.delete(product);

	}

	@Override
	public Merchant getMerchant(String username) throws MerchantNotFoundException {
		if(repo.findByUsername(username) == null) {
			throw new MerchantNotFoundException("No Merchant Found");
		}
		Merchant merchant = repo.findByUsername(username);
		merchant.setPassword(Base64Coder.decodeString(merchant.getPassword()));
		return merchant;
	}

	@Override
	public Merchant updateMerchant(Merchant merchant) {

		return repo.save(merchant);
	}

	@Override
	public Merchant deleteMerchant(String username) {

		Merchant merchant = repo.findByUsername(username);
		repo.deleteById(merchant.getMerchantId());
		return merchant;

	}

	@Override
	public void changePassword(Merchant merchant,String password) {
		merchant.setPassword(Base64Coder.encodeString(password));
		repo.save(merchant);
	}


	@Override
	public Merchant getMerchantById(int merchantId) {
		Merchant merchant = repo.getOne(merchantId);
		merchant.setPassword(Base64Coder.decodeString(merchant.getPassword()));
		return merchant;
	}

	@Override
	public Merchant findMerchantId(int merchantId) {
		Merchant merchant = repo.getOne(merchantId);
		return merchant;
	}
	@Override
	public Product findProductById(int productId) {
		Product product = prepo.getOne(productId);
		return product;
	}
	@Override
	public List<Product> getAllProducts(int merchantId) {
		Merchant merchant = repo.getOne(merchantId);
		return prepo.getAllproducts(merchant);
	}
}