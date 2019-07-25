package com.bbshop.bit.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bbshop.bit.domain.CommunityVO;
import com.bbshop.bit.service.CommunityService;

@Controller
public class CommunityController {
	
	@Autowired
	private CommunityService communityService;
	
	/* 커뮤니티 */
	// 커뮤니티 - 메인
	@RequestMapping("/community_main.do")
	public String community_main() {
		return "shoppingMall/main/community_main";
	}
	
	// 커뮤니티 - 글쓰기
	@RequestMapping("/community_form.do")
	public String community_form() {
		return "shoppingMall/community/community_form";
	}
	
	// 커뮤니티 - 게시판
	@RequestMapping("/community_list.do")
	public String community_list() {
		return "shoppingMall/community/community_list";
	}
	
	// 커뮤니티 - 글 상세
	@RequestMapping("/community_detail.do")
	public String community_detail() {
		return "shoppingMall/community/community_detail";
	}

	// 커뮤니티 - 글 수정
	@RequestMapping("/community_modify.do")
	public String community_modify() {
		return "shoppingMall/community/community_modify";
	}
	
	@RequestMapping("/communityWriteAction.do")
	public String communityWriteAction(CommunityVO community) throws Exception{
		
		int res = communityService.insertPost(community);
		
		if(res == 1) {
			System.out.println("글이 등록되었습니다.");
		} else {
			System.out.println("글 등록에 실패하였습니다.");
		}
		
		
		return "shoppingMall/community/community_list";
		
	}
	
	@RequestMapping("/send.do") 
	public String send(HttpServletRequest request) throws UnsupportedEncodingException{ 
		request.setCharacterEncoding("utf-8"); 
		System.out.println( (String) request.getParameter("board_content")); 
		
		return "shoppingMall/community/community_list";
	}

}
