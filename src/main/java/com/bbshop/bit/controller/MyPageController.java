package com.bbshop.bit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.ReviewVO;
import com.bbshop.bit.service.MyPageService;

@Controller
@RequestMapping("*.mp")
public class MyPageController {

	@Autowired
	private MyPageService myPageService;
	
	@RequestMapping("/mypost.mp")
	public String getMyPost(Model model, PagingVO pagingVO) {
		
		List<ReviewVO> review_list = myPageService.getReviewList(pagingVO);
		
		model.addAttribute("review_list", review_list);
		
		return "shoppingMall/mypage/mypost";
	}
}
