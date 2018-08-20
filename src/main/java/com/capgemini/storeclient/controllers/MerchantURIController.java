package com.capgemini.storeclient.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.capgemini.storeclient.beans.Merchant;
import com.capgemini.storeclient.beans.Product;


@Controller
public class MerchantURIController {
	
	@RequestMapping(value="/")
	public String getIndexPage() {
		return "indexPage";	
	}
	
	@RequestMapping(value="/homePage")
	public String getHomePage() {
		return "homePage";
	}
	
	@RequestMapping(value="SignIn")
	public String getSignInPage() {
		return "SignIn";	
	}
	
	@RequestMapping(value="login")
	public String getLoginPage() {
		return "login";	
	}
	

	@RequestMapping(value="updateProduct1")
	public String getUpdateProduct() {
		return "updateProduct1";	
	}
	
	@RequestMapping(value="updatedProductSuccess")
	public String getUpdateProductSuccess() {
		return "updatedProductSuccess";	
	}
	
	/*@RequestMapping(value="addProduct")
	public String getAddProductPage() {
		return "addProduct";	
	}*/
	
	/*@RequestMapping(value="removeProduct")
	public String getRemoveProductPage() {
		return "removeProduct";	
	}*/
	
	
	
	@RequestMapping(value="myProfile")
	public String getMyProfilePage() {
		return "myProfile";	
	}
	
//	@RequestMapping(value="updateProduct")
//	public String getupdateProductPage() {
//		return "updateProduct";	
//	}
	
	
	@ModelAttribute("merchant")
	public Merchant getNewMerchant() { 
		return new Merchant();
	}
	
	@ModelAttribute("product")
	public Product getNewProduct() { 
		return new Product();
	}
	
	@RequestMapping(value="ChangePassword")
	public String getChangePasswordPage() {
	
		return "changePassword";
	}
	
	
	@RequestMapping(value="SecurityAnswer")
	public String getSecurityAnswer() {
	return "SecurityAnswer"; 
	}
	@RequestMapping(value="forgotpassword1")
	public String getForgotPassword() {
	return "forgotpassword1"; 
	}
	@RequestMapping(value="InvalidUserPage")
	public String getInvalidUserPage() {
	return "InvalidUserPage"; 
	}

}