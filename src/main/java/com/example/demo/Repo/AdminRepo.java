package com.example.demo.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Model.Admin;
import com.example.demo.Model.Product;


public interface AdminRepo extends JpaRepository<Admin, Integer>
 {


	public Admin findByAusernameAndApass(String un,String pw);


}
