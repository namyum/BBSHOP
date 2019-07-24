package com.bbshop.bit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bbshop.bit.Service.CommunityService;
import com.bbshop.bit.domain.CommunityVO;

@Controller
public class CommunityController {
	
	@Autowired
	private CommunityService communityService;
	
	@RequestMapping("/community_form.co")
	public String community_form() {
		return "shoppingMall/community/community_form";
	}
	
	// 커뮤니티 - 게시판
	@RequestMapping("/community_list.co")
	public String community_list() {
		return "shoppingMall/community/community_list";
	}
	
	@RequestMapping("/communityWriteAction.co")
	public String communityWriteAction(CommunityVO community) throws Exception{
		
		communityService.insertPost(community);
		
		return "shoppingMall/community/community_list";
		
	}

}
