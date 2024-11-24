package com.example.demo.Controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.Model.Admin;
import com.example.demo.Model.Product;

import com.example.demo.Service.AdminService;

@Controller
public class ShopController {
	
	@Autowired
	AdminService as;
	
	@RequestMapping("/index")
	public String get()
	{
		return "index";
	}
	
	@RequestMapping("/shop")
	public String one()
	{
		return "shop";
	}

	@RequestMapping("/contact")
	public String two()
	{
		return "contact";
	}

	@RequestMapping("/testimonial")
	public String three()
	{
		return "testimonial";
	}

	@RequestMapping("/why")
	public String four()
	{
		return "why";
	}
	
	@RequestMapping("/AdminLogin")
	public String five()
	{
		return "AdminLogin";
	}

	@RequestMapping("/RegisterAdmin")
	public String six()
	{
		return "RegisterAdmin";
	}
	
	@RequestMapping("/dash")
	public String seven()
	{
		return "dash";
	}
	
	@RequestMapping("/abc")
	public String eight()
	{
		return "product";
	}
	
	@GetMapping("/SaveAdminInfo")
	public String SaveAdminInfo(@ModelAttribute("a1") Admin a1)
	{
		as.RegisterData(a1);
		System.out.println(a1);
		
		return "redirect:/AdminLogin";
	}
	
	@PostMapping("/CheckUserCred")
	public String CheckUserCred(@RequestParam("un") String un,@RequestParam("pw") String pw,HttpSession h1)
	{
	  
	  Admin ad=  as.CheckData(un,pw);
	  if(ad!=null)
	  {
		 
		  h1.setAttribute("temp", un);
		  return "redirect:/dash";
	  }
		return "redirect:/AdminLogin";
	}
	
	
	@PostMapping("/SaveProductInfo")
	public String SaveProductInfo(@ModelAttribute("p1") Product p1,@RequestParam("ProductImage") MultipartFile filename) throws IllegalStateException, IOException
	{
		
		String path="C:\\Users\\mahaj\\Documents\\workspace-spring-tool-suite-4-4.26.0.RELEASE\\GiftShopWebsite\\src\\main\\resources\\static\\images";
		String fname=filename.getOriginalFilename();
	    File f1=new File(path);	
		filename.transferTo(new File(f1,fname));
		p1.setPimage(fname);
		as.AddProduct(p1);
		System.out.println(p1);
		return "redirect:/product";
	}
	
	 @RequestMapping("/product")
	   	public String DisplayData(Model m)
	   	{
	    	List<Product> li=as.DisplayAllProduct();
	    	m.addAttribute("temp", li);
	    	System.out.println(li.toString());
	   		return "product";
	   	}
	
	 
	 
	
	 
	 @GetMapping("/AddToCart/{id}")
	    public String getProductPage(@PathVariable int id,Model m)
	    {
		    
			Product pt=as.setSingleProduct(id);
			m.addAttribute("product",pt);
			System.out.println(as);
	    	return "MainPage";
	    }
	
}
