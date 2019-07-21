package com.bbshop.bit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bbshop.bit.domain.PageDTO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.SavingsVO;
import com.bbshop.bit.service.MyPageService;

@Controller
@RequestMapping("*.mp")
public class MyPageController {

	@Autowired
	private MyPageService myPageService;
	
	// 적립금 조회
	@RequestMapping("/savings.mp")
	public String getSavings(Model model, HttpSession session, PagingVO pagingVO) {
						
		int sum = 0;
		long total = 0;
		// long key = (long)session.getAttribute("user_key"); session 객체에서 id 식별자인 key 받음
		
		List<SavingsVO> savings_list = myPageService.getSavingsList(pagingVO, 1); // key 대신 임시로 1을 넣었다.
		
		for (int i = 0; i < savings_list.size(); i++) {
							
			int index = savings_list.size() - i - 1; // 주문번호의 역순으로 적립금 데이터가 조회되었기 때문에, 가장 마지막 적립금부터 총 적립금을 넣어준다.
			sum += savings_list.get(i).getOr_savings();
			
			savings_list.get(index).setOr_savings_total(sum);
		}
		
		total = myPageService.getTotal(pagingVO); // 전체 적립금 내역 개수 구하기
		
		model.addAttribute("pageMaker", new PageDTO(pagingVO, total));
		model.addAttribute("savings_list", savings_list);
		
		return "shoppingMall/mypage/mypage";
	}
}
