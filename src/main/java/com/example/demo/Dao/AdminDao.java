package com.example.demo.Dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.Admin;
import com.example.demo.Model.Product;
import com.example.demo.Repo.AdminRepo;
import com.example.demo.Repo.ProductRepo;
import com.example.demo.Service.AdminService;

@Service
public class AdminDao implements AdminService
{
 
	@Autowired
	AdminRepo ar;
	
	@Autowired
	ProductRepo pr;
	
	@Override
	public void RegisterData(Admin a1) {
		
		ar.save(a1);
		
	}

	@Override
	public Admin CheckData(String un, String pw) {
		
		return ar.findByAusernameAndApass(un, pw);
	}

	@Override
	public void AddProduct(Product p1) {
		pr.save(p1);
		
	}

	@Override
	public List<Product> DisplayAllProduct() {
	
		return pr.findAll();
	}

	

	@Override
	public void getProductInfo(int id) {
		
		pr.findById(id);
		
	}

	@Override
	public Product setSingleProduct(int id) {
		
		return pr.getById(id);
	}
	
	

}
