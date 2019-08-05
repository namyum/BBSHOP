package com.bbshop.bit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CommunityController {

	@RequestMapping(value="community_main.do",method=RequestMethod.GET)
	public String commuMain() {
		System.out.println("여기까지 들어오느가?");
		return "shoppingMall/main/community_main";
	}
}
