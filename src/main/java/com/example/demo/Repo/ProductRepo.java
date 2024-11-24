package com.example.demo.Repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Model.Product;

public interface ProductRepo extends JpaRepository<Product, Integer>
{



	
}
