package com.bbshop.bit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bbshop.bit.domain.MemberVO;
import com.bbshop.bit.domain.OrderVO;
import com.bbshop.bit.domain.PageDTO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.ReviewVO;
import com.bbshop.bit.domain.SavingsVO;
import com.bbshop.bit.service.MyPageService;

@Controller
public class MyPageController {

	@Autowired
	private MyPageService myPageService;
	
	// 마이페이지 -> 적립금 조회
	@RequestMapping("/savings.do")
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
	
	// 2. 주문/배송
	@RequestMapping("/order_status.do")
	public String getOrderStatus(Model model, PagingVO pagingVO) {
				
		long total = 0;
		
		List<OrderVO> orders_list = myPageService.getOrdersList(pagingVO, 1); // key는 session에서 받아야 하므로 임시로 1로 테스트.
		
		total = myPageService.getTotal(pagingVO, "shop_order"); // 주문 배송 테이블 데이터 개수 구하기.
		
		model.addAttribute("pageMaker", new PageDTO(pagingVO, total));
		model.addAttribute("orders_list", orders_list);
		
		return "shoppingMall/mypage/order_status";
	}
	
	// 2. 주문/배송 - 주문 취소
	@RequestMapping("/order_cancel.do")
	public String getOrderCanceled(Model model, @RequestParam("order_num") long order_num) {
				
		myPageService.cancelOrder(order_num);
		
		return "redirect:/order_status.do";
	}
	
	// 3. 내가 남긴 글
	@RequestMapping("/mypost.do")
	public String getMyPost(Model model, PagingVO pagingVO) {
		
		long total = 0;
		
		List<ReviewVO> review_list = myPageService.getReviewList(pagingVO, 1);
		
		total = myPageService.getTotal(pagingVO, "shop_order"); // 주문 배송 테이블 데이터 개수 구하기.
		
		model.addAttribute("review_list", review_list);
		model.addAttribute("pageMaker", new PageDTO(pagingVO, total));

		return "shoppingMall/mypage/mypost";
	}
	
	// 3. 내가 남긴 글 - 상품 후기
	@RequestMapping("/mypost_review.do")
	public String mypost_review(Model model, PagingVO pagingVO) {
		
		long total = 0;
	
		List<ReviewVO> review_list = myPageService.getReviewList(pagingVO, 1); // 후기 테이블을 파라미터로 준다.
		
		total = myPageService.getTotal(pagingVO, "review"); // 후기 테이블 데이터 개수 구하기.
		
		model.addAttribute("review_list", review_list);
		model.addAttribute("pageMaker", new PageDTO(pagingVO, total));
		
		return "shoppingMall/mypage/mypost_review";
	}

	// 3. 내가 남긴 글 - 상품 문의
	@RequestMapping("/mypost_qna.do")
	public String mypost_qna() {
		
		return "shoppingMall/mypage/mypost_qna";
	}

	// 3. 내가 남긴 글 - 1대1 문의
	@RequestMapping("/mypost_one_to_one.do")
	public String mypost_one_to_one() {
		
		return "shoppingMall/mypage/mypost_one_to_one";
	}
	
	// 4. 회원 정보 수정
	@RequestMapping("/modify_info.do")
	public String getModifyInfo(Model model) {
		
		MemberVO member = myPageService.getUserInfo(1);
		
		System.out.println(member);
		
		model.addAttribute("memberInfo", member);
		
		return "shoppingMall/mypage/modify_info";
	}
	
	// 마이페이지 - 회원 정보 수정 - 배송지 수정
	@RequestMapping("/modify_addr")
	public String modify_addr() {
		
		return "shoppingMall/mypage/modify_addr";
	}

	// 마이페이지 - 회원 정보 수정 - 배송지 등록
	@RequestMapping("/write_addr")
	public String write_addr() {
		
		return "shoppingMall/mypage/write_addr";
	}

	// 마이페이지 - 회원 정보 수정 - 회원탈퇴
	@RequestMapping("/withdraw")
	public String withdraw() {
		
		return "shoppingMall/mypage/withdraw";
	}
	
}
