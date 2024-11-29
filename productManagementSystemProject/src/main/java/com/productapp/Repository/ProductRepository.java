package com.productapp.Repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.productapp.prodmodel.Product;
@Repository
public interface ProductRepository extends CrudRepository<Product, Integer>{

	//Product findAllByProductId(int productId);

	 public Product findAllByProductId(int productId);


}

