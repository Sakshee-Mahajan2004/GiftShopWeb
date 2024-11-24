package com.example.demo.Service;

import java.util.List;
import java.util.Optional;

import com.example.demo.Model.Admin;
import com.example.demo.Model.Product;
import com.example.demo.Repo.ProductRepo;

public interface AdminService {
	
	public void RegisterData(Admin a1);

	public Admin CheckData(String un, String pw);
	
	public void AddProduct(Product p1);

	public List<Product> DisplayAllProduct();


	public void getProductInfo(int id);

	public Product setSingleProduct(int id);

	 

	

}
