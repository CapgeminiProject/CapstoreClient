package com.capgemini.storeclient.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import com.capgemini.storeclient.beans.Merchant;
import com.capgemini.storeclient.beans.Product;
import com.capgemini.storeclient.exceptions.MerchantNotFoundException;
import com.capgemini.storeclient.exceptions.ProductNotFoundException;
import com.capgemini.storeclient.services.IMerchantService;

@Controller
public class MerchantController {

	@Autowired
	IMerchantService MerchantServices;

	@RequestMapping(value = "merchantSignIn")
	public ModelAndView addMerchant(@ModelAttribute("merchant") Merchant merchant,
			@RequestParam("securityQuestion") String question, @RequestParam("type") String type) {
		System.out.println(type);
		merchant.setSecurityQuestion(question);
		// merchant = MerchantServices.addMerchant(merchant);
		RestTemplate rest = new RestTemplate();
		rest.postForObject("http://localhost:9090/merchantSignIn", merchant, Merchant.class);
		return new ModelAndView("login");
	}

	@RequestMapping(value = "ProductSuccessPage/{merchantId}")
	public ModelAndView addProduct(@PathVariable int merchantId, @ModelAttribute("product") Product product)
			throws ProductNotFoundException {
		System.out.println(merchantId);
		Merchant merchant = new Merchant(merchantId);
		product.setMerchant(merchant);
		RestTemplate rest = new RestTemplate();
		Integer id = rest.postForObject("http://localhost:9090/addProduct?merchantId=" + merchantId, product,
				Integer.class);
		// product = MerchantServices.addProduct(product);
		System.out.println(product.getProductId());
		return new ModelAndView("addProductSuccessPage", "id", id);
	}

	@RequestMapping(value = "addProduct")
	public ModelAndView getAddProductPage(@ModelAttribute("product") Product product,
			@RequestParam("abc") int merchantId) {
		System.out.println(merchantId);
		return new ModelAndView("addProduct", "merchantId", merchantId);
	}

	@RequestMapping(value = "removedProduct")
	public ModelAndView removeProduct(@ModelAttribute("product") Product product) {
		// Product product = new Product();
		RestTemplate rest = new RestTemplate();
		Integer id = rest.getForObject("http://localhost:9090/removeProduct?productId=" + product.getProductId(),
				Integer.class);
		// MerchantServices.removeProduct(product);
		return new ModelAndView("removeProductSuccess", "product", product);
	}

	@RequestMapping(value = "removeProduct")
	public ModelAndView getRemoveProductPage(@ModelAttribute("product") Product product,
			@RequestParam("abc") int merchantId) {

		return new ModelAndView("removeProduct", "merchantId", merchantId);
	}

	@RequestMapping(value = "updateProduct")
	public ModelAndView getUpdateProductPage(@ModelAttribute("product") Product product,
			@RequestParam("abc") int merchantId) {
		System.out.println(merchantId);
		return new ModelAndView("updateProduct", "merchantId", merchantId);
	}

	@RequestMapping(value = "updateProductSuccess")
	public ModelAndView updateProduct(@RequestParam("productId") int productId) {
		Product product = new Product();

		// product = MerchantServices.getProductDetails(productId);
		RestTemplate rest = new RestTemplate();
		product = rest.getForObject("http://localhost:9090/getProductDetails?productId=" + productId, Product.class);
		return new ModelAndView("updateProduct1", "product", product);

	}

	@RequestMapping(value = "updatePro/{productId}")
	public ModelAndView updateProd(@ModelAttribute("product") Product product, @PathVariable int productId)
			throws ProductNotFoundException {
		product.setProductId(productId);
		// MerchantServices.updateProduct(product);
		RestTemplate rest = new RestTemplate();
		product = rest.postForObject("http://localhost:9090/updateProduct",product, Product.class);
		return new ModelAndView("updatedProductSuccess");

	}

	// @RequestMapping(value="updateProduct")
	// public ModelAndView getUpdateProductPage(@ModelAttribute("product") Product
	// product, @RequestParam("abc")int merchantId) {
	// System.out.println(merchantId);
	// return new ModelAndView("updateProduct","merchantId",merchantId);
	// }
	//
	// @RequestMapping(value="updated/{merchantId}")
	// public ModelAndView getUpdatedPage(@PathVariable int merchantId,
	// @ModelAttribute("product") Product product) {
	// return new ModelAndView("updatedProduct","merchantId",merchantId);
	// }

	@RequestMapping(value = "getAllProducts")
	public ModelAndView getAllProduct(@RequestParam("abc") int merchantId) {
		List<Product> product = MerchantServices.getAllProducts(merchantId);
		
		
		return new ModelAndView("getAllProducts", "product", product);
	}

	@RequestMapping(value = "forgotpassword")
	public ModelAndView forgotPassword(@RequestParam("username") String username) {
		Merchant merchant = null;
		try {
			merchant = MerchantServices.getMerchant(username);
		} catch (MerchantNotFoundException e) {
			new ModelAndView("errorPage", "error", e.getMessage());
			e.printStackTrace();
		}
		return new ModelAndView("securityQuestion", "merchant", merchant);
	}

	@RequestMapping(value = "Answer/{email:.+}")
	public ModelAndView securityAnswer(@PathVariable String email, @RequestParam("answer") String answer) {
		Merchant merchant = null;
		try {
			merchant = MerchantServices.getMerchant(email);
			System.out.println("\n\n\n\n" + merchant);
			if (merchant.getSecurityAnswer().compareTo(answer) != 0) {
				String message = "Not a valid user";
				return new ModelAndView("InvalidUserPage", "message", message);
			}
		} catch (MerchantNotFoundException e) {
			new ModelAndView("errorPage", "error", e.getMessage());
			e.printStackTrace();
		}
		return new ModelAndView("securityAnswer", "message", merchant.getPassword());
	}

	// @RequestMapping(value="changePassword")
	// public ModelAndView changePassword(@RequestParam("abc")int merchantId,
	// @RequestParam("oldPassword")String oldPassword,
	// @RequestParam("newPassword")String newPassword,
	// @RequestParam("confirmNewPassword")String confirmNewPassword ) {
	// Merchant merchant = MerchantServices.getMerchantById(merchantId);
	// if(merchant.getPassword().compareTo(oldPassword) == 0) {
	// MerchantServices.changePassword(merchant, newPassword);
	// }
	// return new ModelAndView("changePasswordSuccess");
	// }

	@RequestMapping(value = "changePassword1")
	public ModelAndView changePassword(@RequestParam("merchantId") int merchantId) {

		return new ModelAndView("changePassword", "merchantId", merchantId);
	}

	@RequestMapping(value = "changePasswordSuccess1/{merchantId}")
	public ModelAndView changePasswordSuccess(@PathVariable int merchantId,
			@RequestParam("oldPassword") String oldPassword, @RequestParam("newPassword") String newPassword,
			@RequestParam("confirmNewPassword") String confirmNewPassword) {

		Merchant merchant = MerchantServices.findMerchantId(merchantId);
		MerchantServices.changePassword(merchant, newPassword);
		System.out.println(merchant.getPassword());
		return new ModelAndView("changePasswordSuccess");
	}

	@RequestMapping(value = "myProfilesuccess")
	public ModelAndView myProfile(@RequestParam("merchantId") int merchantId) {

		Merchant merchant = MerchantServices.findMerchantId(merchantId);
		return new ModelAndView("myProfilesuccess", "merchant", merchant);
	}

}
