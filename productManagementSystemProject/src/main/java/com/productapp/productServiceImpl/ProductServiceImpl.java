package com.productapp.productServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import com.productapp.Repository.ProductRepository;
import com.productapp.prodmodel.Product;
import com.productapp.productService.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductRepository pr;
	


	@Override
	public void saveData(Product p) {
		pr.save(p);
		
	}



	@Override
	public Iterable<Product> displayAll() {

		return pr.findAll();
	}



	@Override
	public void deleteProduct(Product p) {
		pr.delete(p);
		
	}



	@Override
	public Product editData(int productId) {
		
		return pr.findAllByProductId(productId);
	}



	



		
	}


	