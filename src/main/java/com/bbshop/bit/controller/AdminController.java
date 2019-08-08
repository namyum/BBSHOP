package com.bbshop.bit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("*.do")
public class AdminController {
	
	@RequestMapping("admin_main.do")
	public String admin_main() {
		return "shoppingMall/admin/admin_main";
	}
	
	@RequestMapping("userlist.do")
	public String userList() {
		return "shoppingMall/admin/userlist";
	}

	@RequestMapping("withdrawal.do")
	public String withdrawal() {
		return "shoppingMall/admin/withdrawal";
	}

	@RequestMapping("goodsList.do")
	public String goodsList() {
		return "shoppingMall/admin/goodsList";
	}

	@RequestMapping("order.do")
	public String order() {
		return "shoppingMall/admin/order";
	}

	

	@RequestMapping("refund.do")
	public String refund() {
		return "shoppingMall/admin/refund";
	}

	@RequestMapping("review.do")
	public String admin_review() {
		return "shoppingMall/admin/review";
	}

	@RequestMapping("service_FAQ.do")
	public String service_FAQ() {
		return "shoppingMall/admin/service_FAQ";
	}
	@RequestMapping("service_OneToOne.do")
	public String onetoone() {
		return "shoppingMall/admin/service_OneToOne";
	}

	@RequestMapping("service_QNA.do")
	public String QNA() {
		return "shoppingMall/admin/service_QNA";
	}

	@RequestMapping("community_Notice.do")
	public String community_Notice() {
		return "shoppingMall/admin/community_Notice";
	}


	@RequestMapping("report.do")
	public String report() {
		return "shoppingMall/admin/report";
	}

	@RequestMapping("adminAccount.do")
	public String adminAccount() {
		return "shoppingMall/admin/adminAccount";
	}

	
	
	
}
