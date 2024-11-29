package com.productapp.productService;


import com.productapp.prodmodel.Product;

public interface ProductService {


	public void saveData(Product p);

	//public Iterable<Product> displayAllData();

	public Iterable<Product> displayAll();

	public void deleteProduct(Product p);

	public Product editData(int productId);

	//public void deleteProduct(Product p);





}
	
	 