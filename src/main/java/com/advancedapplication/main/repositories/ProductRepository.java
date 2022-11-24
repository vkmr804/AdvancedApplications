
package com.advancedapplication.main.repositories;

import org.springframework.data.repository.CrudRepository;

import com.advancedapplication.main.models.Product;

public interface ProductRepository extends CrudRepository<Product, String> {

	@Override
	public void delete(Product product);

}