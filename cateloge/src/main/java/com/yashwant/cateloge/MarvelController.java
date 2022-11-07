package com.yashwant.cateloge;


import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.yashwant.models.Account;
import com.yashwant.models.AccountOperation;
import com.yashwant.models.Companies;

@Controller
@ComponentScan(basePackages= {"com.yashwant.models"})

public class MarvelController {

	@Autowired
	private Feedbackrepository feedrepo;
	
	@Autowired
	AccountOperation aops;
	
	
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/homePage")
	public String homePage() {
		return "HomePage";
	}
	
	@RequestMapping("/complist")
	public ModelAndView compList() {
		ModelAndView mv=new ModelAndView();
		ArrayList<Companies> list=aops.getCompanyList();
		mv.addObject("lsst",list);
		mv.setViewName("companyList");
		return mv;
	}
	
	@RequestMapping("addCompany")
	public String addCompany() {
		return "AddCompany";
	}
	
	@RequestMapping("updateComp")
	public String updateCompany() {
		return "UpdateComp";
	}
	
	@RequestMapping("/adminpage")
	public String adminPage() {
		return "AdminPage";
	}
	
	@RequestMapping("/deletecomp")
	public String deletecomp() {
		return "DeleteComp";
	}
	
	@RequestMapping("/register")
	public String register() {
		return "Register";
	}
	
	@RequestMapping("/addacc")
	public String addAccount(Account obj) {
		String state = aops.addNewAccount(obj);
		String page = "";
		if(state.equals("Success"))
			page="AccountOpened";
		else
			page="AddAccError";
		return page;
	}
	
	@RequestMapping("/back2register")
	public String backRegister() {
		return "AddCompany";
	}
	
	@RequestMapping("feedback")
	public String feedback() {
		return "feedback";
	}
	
	@RequestMapping("/feed")
	public String feed(FeedbackEntity obj) {
		feedrepo.save(obj);
		return "feedAdded";
	}
	
	@RequestMapping("/feedbackrepo")
	public ModelAndView reportfeed() {
		ModelAndView mv=new ModelAndView();
		List<FeedbackEntity> list=feedrepo.findAll();
		mv.addObject("list",list);
		mv.setViewName("feedbackpage");
		return mv;
	}
	
	@RequestMapping("/addcomp")
	public String AddCompany(Companies cpni) {
		String st = aops.AddCompany(cpni);
		String page = "";
		if(st.equals("Success"))
			page="companyRegistered";
		else
			page="addCompError";
		return page;
	}
	
	@RequestMapping("/updateCompData")
	public String updatedCompData(Companies comp) {
		String p="";
		String rs=aops.updateCompany(comp);
		if(rs.equals("Success")) 
			p="CompanyUpdated";
		
		else 
			p="CompFailToUpdate";
		return p;
	}
	
	@RequestMapping("/checkLogin")
	public String checkLogin(Account obj) {
		String isValid = aops.checkUser(obj);
		String check="";
		
		if(isValid.equals("user"))
			check="HomePage";
		else if(isValid.equals("admin"))
			check="AdminPage";
		else
			check="LogInFail";
		return check;
	}
	
	@RequestMapping("/search")
	public String searchPage() {
		return "SearchUser";
	}
	
	@RequestMapping("/searchUser")
	public ModelAndView searchComp(String name) {
		
		ModelAndView mv=new ModelAndView();
		Account obj=aops.searchUser(name);
		mv.addObject("company",obj);
		mv.setViewName("SearchUserResult");
		return mv;
	}
	
	@RequestMapping("deleteCompany")
	public String deleteCompany(String id) {
		String result=aops.deleteCompany(id);
		String red="";
		if(result.equals("deleted")) {
			red="CompanyDeleted";
		}
		else {
			red="FailToDel";
		}
		return red;
	}

	@RequestMapping("/searchComp")
	public String searchCompany() {
		return "searchCompany";
	}
	
	@RequestMapping("/searchCompany")
	public ModelAndView searchCompnies(String id) {
		
		ModelAndView mv=new ModelAndView();
		Companies cmp = aops.searchCompany(id);
		mv.addObject("companies",cmp);
		mv.setViewName("SearchCompResult");
		return mv;
	}
	
	

}
