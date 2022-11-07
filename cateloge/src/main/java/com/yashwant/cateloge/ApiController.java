package com.yashwant.cateloge;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sudhakar/api")
public class ApiController {
	 
	@Autowired 
	private CompanyRepository repo;
	
	@GetMapping("/test")
	public String getMess() {
		return "this is api";
	}
	
	@GetMapping("/acc/all")
	public List<CompanyEntity> getAllCompanies()
	{
		List<CompanyEntity> list=repo.findAll();
		return list;
	}
	
	@GetMapping("/acc/search/{id}")
	public CompanyEntity getSearchInfo(@PathVariable String id)
	{
		CompanyEntity obj; 
		try {
		Optional<CompanyEntity> opt=repo.findById(id);
		obj=opt.get();
		}
		catch(Exception e) {
			obj=new CompanyEntity();
			obj.setId("not found");
			obj.setCompanynm("not found");
			obj.setCategory("not found");
			obj.setEmployees(0);
			obj.setCountry("null");
			obj.setCeo("null");
			obj.setYear("null");
		}
		return obj;
	}
	
	@PostMapping("/acc/add")
	public CompanyEntity addCompany(CompanyEntity obj) {
		repo.save(obj);
		return obj;
	}
}
