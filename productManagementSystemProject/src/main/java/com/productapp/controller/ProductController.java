package com.productapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.productapp.prodmodel.Product;
import com.productapp.productService.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService ps;

	// login page
	@GetMapping("/")
	public String preLogin() {
		return "login";
	}

	// login validation
	@RequestMapping("/log")
	public String adview(@RequestParam("uname") String uname, @RequestParam("password") String password, Model m) {

		if (uname.equals("admin") && password.equals("admin")) {
			return "adminview";
		} else {
			m.addAttribute("error", "invalid username and password");

			return "Adminview";
		}
	}

	@RequestMapping("/addprd")
	public String add() {
		return "AddProduct";
	}

	@RequestMapping("/add")
	public String addProduct(@ModelAttribute Product p) {
		ps.saveData(p);
		return "Adminview";

	}

	@RequestMapping("/viewprd")
	public String ViewProduct(Model m) {
		Iterable<Product> lp = ps.displayAll();
		m.addAttribute("data", lp);
		return "ViewProduct";
	}

	@RequestMapping("/delete")
	public String deleteData(@ModelAttribute Product p, Model m) {
		ps.deleteProduct(p);
		Iterable<Product> lp = ps.displayAll();
		m.addAttribute("data", lp);
		return "ViewProduct";
	}

	@RequestMapping("/edit")
	public String editData(@RequestParam("productId") int productId, Model m) {
		Product p = ps.editData(productId);
		// product p=ps.editData.findById(id)
		m.addAttribute("data", p);
		return "edit";// redirect to edit page
	}

	@RequestMapping("/update")
	public String updateData(@ModelAttribute Product p, Model m) {
		ps.saveData(p);
		Iterable<Product> lp = ps.displayAll();
		m.addAttribute("data", lp);
		return "ViewProduct";
	}

}
