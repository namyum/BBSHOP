package com.bbshop.bit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bbshop.bit.domain.OrderVO;
import com.bbshop.bit.domain.PageDTO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.SavingsVO;
import com.bbshop.bit.service.MyPageService;

@Controller
@RequestMapping("*.mp")
public class MyPageController {

	@Autowired
	private MyPageService myPageService;
	
	// 마이페이지 -> 적립금 조회
	@RequestMapping("/savings.mp")
	public String getSavings(Model model, HttpSession session, PagingVO pagingVO) {
						
		long sum = 0;
		long total = 0;
		// long key = (long)session.getAttribute("user_key"); session 객체에서 id 식별자인 key 받음.
		
		List<SavingsVO> savings_list = myPageService.getSavingsList(pagingVO, 1); // key는 session에서 받아야 하므로 임시로 1로 테스트.
		
		for (int i = 0; i < savings_list.size(); i++) {
							
			int index = savings_list.size() - i - 1; // 주문번호의 역순으로 적립금 데이터가 조회되었기 때문에, 가장 마지막 적립금부터 총 적립금을 넣어준다.
			sum += savings_list.get(i).getOr_savings();
			
			savings_list.get(index).setOr_savings_total(sum);
		}
		
		total = myPageService.getTotal(pagingVO, "savings"); // 적립금 테이블 개수 구하기.
				
		model.addAttribute("pageMaker", new PageDTO(pagingVO, total));
		model.addAttribute("savings_list", savings_list);
		
		return "shoppingMall/mypage/mypage";
	}
	
	// 주문/배송
	@RequestMapping("/order_status.mp")
	public String getOrderStatus(Model model, PagingVO pagingVO) {
				
		long total = 0;
		
		List<OrderVO> orders_list = myPageService.getOrdersList(pagingVO, 1); // key는 session에서 받아야 하므로 임시로 1로 테스트.
		
		
//		for (int i = 0; i < orders_list.size(); i++) {
//			
//			System.out.println(i + "번째 주문 객체 : " + orders_list.get(i).toString());
//		}
//		
		total = myPageService.getTotal(pagingVO, "shop_order"); // 주문 배송 테이블 데이터 개수 구하기.
		
		model.addAttribute("pageMaker", new PageDTO(pagingVO, total));
		model.addAttribute("orders_list", orders_list);
		
		return "shoppingMall/mypage/order_status";
	}
	
	// 내가 남긴 글
	@RequestMapping("/mypost.mp")
	public String getMyPost() {
		
		return "shoppingMall/mypage/mypost";
	}
	
	// 회원 정보 수정
	@RequestMapping("/modify_info.mp")
	public String getModifyInfo() {
		
		return "shoppingMall/mypage/modify_info";
	}
}
