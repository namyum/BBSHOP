package com.bbshop.bit.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bbshop.bit.domain.AddrVO;
import com.bbshop.bit.domain.MemberVO;
import com.bbshop.bit.domain.MoreDetailsVO;
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
	
	@Autowired
	private HttpSession session;
	
	// 회원 정보 조회 -> 적립금 불러오기
	@RequestMapping(value = "/savings.do")
	public String getSavings(Model model, PagingVO pagingVO) {
						
		long sum = 0;
		long total = 0;
		
		total = myPageService.getTotal(pagingVO, "savings"); // 주문 배송 테이블 데이터 개수 구하기.
		
		List<SavingsVO> savings_list = myPageService.getSavingsList(pagingVO, total, 1);
		
		List<Long> all_savings = myPageService.getAllSavings(1);
		
		List<OrderVO> orders_list = myPageService.getAllOrdersList(1);
		
		long[] savings_total_list = new long[(int)total];
		
		// 내 주문 주문 상태별 묶기
		int[] stts_list = new int[5];
		
		for (int i = 0; i < orders_list.size(); i++) {
						
			switch(orders_list.get(i).getStts()) {
			
				case 0 : 
					stts_list[0]++;
					break;
				case 1 :
					stts_list[1]++;
					break;
				case 2 : 
					stts_list[2]++;
					break;
				case 3 :
					stts_list[3]++;
					break;
				case 4 :
					stts_list[4]++;
					break;					
			}
		}
		
		// 적립금 전체 총합
		for (int i = 0; i < all_savings.size(); i++) {
			
			sum += all_savings.get(i);
			savings_total_list[i] = sum;
		}
		
		int start = (int)(total - (pagingVO.getPageNum() * pagingVO.getAmount()));
		int end = (int)(total - ((pagingVO.getPageNum()-1) * pagingVO.getAmount()));
		
		int cnt = (int)(pagingVO.getAmount() - 1);
		
		for (int i = start; i < end; i++) {
			
			savings_list.get(cnt--).setOr_savings_total(savings_total_list[i]);
		}
				
		model.addAttribute("pageMaker", new PageDTO(pagingVO, total));
		model.addAttribute("savings_list", savings_list);
		model.addAttribute("stts_list", stts_list);
		
		return "shoppingMall/mypage/mypage";
	}
	
	// 주문/배송 목록 불러오기
	@RequestMapping("/order_status.do")
	public String getOrderStatus(Model model, PagingVO pagingVO) {
				
		long total = 0;
		
		total = myPageService.getTotal(pagingVO, "shop_order"); // 주문 배송 테이블 데이터 개수 구하기.
		
		List<OrderVO> orders_list = myPageService.getOrdersList(pagingVO, total, 1);
		
		model.addAttribute("pageMaker", new PageDTO(pagingVO, total));
		model.addAttribute("orders_list", orders_list);
		
		return "shoppingMall/mypage/order_status";
	}
	
	// 주문/배송 -> 주문 취소
	@RequestMapping("/order_cancel.do")
	public String getOrderCanceled(Model model, @RequestParam("order_num") long order_num) {
				
		myPageService.cancelOrder(order_num);
		
		return "redirect:/order_status.do";
	}
	
	// 내가 남긴 글 조회
	@RequestMapping("/mypost.do")
	public String getMyPost(Model model, PagingVO pagingVO) {
		
		long total = 0;
		
		total = myPageService.getTotal(pagingVO, "review"); // 주문 배송 테이블 데이터 개수 구하기.
		
		List<ReviewVO> review_list = myPageService.getReviewList(pagingVO, total, 1);
		
		model.addAttribute("review_list", review_list);
		model.addAttribute("pageMaker", new PageDTO(pagingVO, total));

		return "shoppingMall/mypage/mypost";
	}
	
	// 회원 정보 수정 페이지
	@RequestMapping("/modify_info.do")
	public String getModifyInfo(Model model) {
		
		System.out.println("/modify_info.do 컨트롤러 진입");
		
		MemberVO member = myPageService.getUserInfo(1);
		List<AddrVO> addr_list = myPageService.getAddrList(1);
		MoreDetailsVO member_detail = myPageService.getDetail(1);
		
		System.out.println(addr_list.toString());
				
		model.addAttribute("memberInfo", member);
		model.addAttribute("addr_list", addr_list);
		model.addAttribute("member_detail", member_detail);
		
		return "shoppingMall/mypage/modify_info";
	}
	
	// 회원 정보 수정
	@RequestMapping("/modify_userInfo.do")
	public String modify_userInfo(MemberVO memberVO) {
				
		memberVO.setUSER_KEY(1); // user_key는 계속 데리고 다니는 데이터가 아니라, 세션으로부터 받아야 하므로 테스트상 임의로 넣음.
		
		myPageService.updateUserInfo(memberVO);
		
		return "forward:/modify_info.do";
	}
	
	// 배송지 수정 페이지
	@RequestMapping("/modify_addr.do")
	public String modify_addr(@RequestParam("num") int index, Model model) {
		
		List<AddrVO> addr_list = myPageService.getAddrList(1);
		
		AddrVO addrVO = addr_list.get(index-1);

		model.addAttribute("addrVO", addrVO);
		model.addAttribute("num", index);
		
		return "shoppingMall/mypage/modify_addr";
	}
	
	// 배송지 수정하기
	@RequestMapping("/modify_userAddr.do")
	public String modify_userAddr(AddrVO addrVO, @RequestParam("zipcode") long zipcode) {
		
		addrVO.setUser_key(1);
		addrVO.setZc_key(zipcode);
		
		System.out.println("modify_userAddr에서의 addrVO : " + addrVO.toString());
		
		myPageService.updateAddrInfo(addrVO);
		
		return "forward:/modify_info.do";
	}

	// 배송지 등록 페이지
	@RequestMapping("/write_addr.do")
	public String write_addr(@RequestParam("num") int num, Model model) {
		
		model.addAttribute("num", num);
		
		return "shoppingMall/mypage/write_addr";
	}
	
	// 배송지 등록하기
	@RequestMapping("/write_userAddr.do")
	public String write_userAddr(AddrVO addrVO, @RequestParam("zipcode") long zipcode) {
				
		addrVO.setUser_key(1);
		addrVO.setZc_key(zipcode);
		
		System.out.println("write_userAddr 컨트롤러의 addrVO : " + addrVO.toString());
		
		myPageService.insertAddrInfo(addrVO);
		
		return "forward:/modify_info.do";
	}
	
	// 배송지 삭제하기
	@RequestMapping("/delete_userAddr.do")
	public String delete_userAddr(@RequestParam("num") int num) {
		
		myPageService.deleteAddrInfo(1, num);
		
		return "forward:/modify_info.do";
	}

	// 회원 탈퇴 페이지
	@RequestMapping("/withdraw.do")
	public String withdraw() {
		
		return "shoppingMall/mypage/withdraw";
	}
	
	// 회원 탈퇴
	@RequestMapping("/secede.do")
	public String secede() {
		
		myPageService.deleteUserInfo(1);
		
		return "shoppingMall/main/shopping_main";
	}
	
	// 추가 사항 수정하기
	@RequestMapping("/modify_detail.do")
	public String modify_detail(MoreDetailsVO moreDetailsVO) {
		
		moreDetailsVO.setUSER_KEY(1);
		
		System.out.println("컨트롤러에서의 VO : " + moreDetailsVO.toString());
		
		myPageService.updateDetailInfo(moreDetailsVO, 1);
		
		System.out.println("mapper 통과");
		
		return "redirect:/modify_info.do";
	}
	
	// 닉네임 중복 확인
	@RequestMapping(value = "/nickCheck.do", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String nickCheck(HttpServletRequest request) {
		
		String nickname = request.getParameter("NICKNAME");
		
		int result = myPageService.nickCheck(nickname);
		
		return Integer.toString(result);
	}

// ajax 컨트롤러

	// ajax로 적립금 가져 오기
	@RequestMapping(value = "/savingListPaging.do", consumes = "application/json")
	@ResponseBody
	public List<SavingsVO> getSavingListPaging(@RequestBody PagingVO pagingVO) {
		
		long sum = 0;
		long total = 0;
		
		total = myPageService.getTotal(pagingVO, "savings"); // 주문 배송 테이블 데이터 개수 구하기.
		
		List<SavingsVO> savings_list = myPageService.getSavingsList(pagingVO, total, 1);
		
		List<Long> all_savings = myPageService.getAllSavings(1);
		
		long[] savings_total_list = new long[(int)total];
		
		// 적립금 전체 총합
		for (int i = 0; i < all_savings.size(); i++) {
			
			sum += all_savings.get(i);
			savings_total_list[i] = sum;
		}
		
		int start = (int)(total - (pagingVO.getPageNum() * pagingVO.getAmount()));
		int end = (int)(total - ((pagingVO.getPageNum()-1) * pagingVO.getAmount()));
		
		int cnt = (int)(pagingVO.getAmount() - 1);
		
		for (int i = start; i < end; i++) {
			
			savings_list.get(cnt--).setOr_savings_total(savings_total_list[i]);
		}
		
		return savings_list;
	}
	
	// ajax로 배송 목록 가져 오기
	@RequestMapping(value = "/orderListPaging.do", consumes = "application/json")
	@ResponseBody
	public List<OrderVO> getOrderListPaging(@RequestBody PagingVO pagingVO) {
		
		long total = 0;

		total = myPageService.getTotal(pagingVO, "shop_order"); // 주문 배송 테이블 데이터 개수 구하기.
		
		List<OrderVO> orders_list = myPageService.getOrdersList(pagingVO, total, 1);
		
		return orders_list;
	}
	
	// ajax로 내가 남긴 글 가져 오기
	@RequestMapping(value = "/getTableWithAjax.do", consumes = "application/json")
	@ResponseBody
	public Map<String, List<?>> getTableWithAjax(@RequestBody Map<String, Object> map) {
		
		long pageNum = (long)Integer.parseInt((String)map.get("pageNum"));
		long amount = (long)Integer.parseInt((String)map.get("amount"));
		String category = (String)map.get("category");
		
		PagingVO pagingVO = new PagingVO(pageNum, amount);
		
		long total = 0;
		
		if (!category.equals("all")) {
			
			total = myPageService.getTotal(pagingVO, category); // 테이블 데이터 개수 구하기.
		}
		
		Map<String, List<?>> listMap = new HashMap<>();
		
		if (category.equals("review")) {
			
			listMap.put("review", myPageService.getReviewList(pagingVO, total, 1));
			
			return listMap;
			
		} else if (category.equals("qna")) {
			
			listMap.put("qna", myPageService.getQnaList(pagingVO, total, 1));
			
			return listMap;
			
		} else if (category.equals("onetoone")) {
			
			listMap.put("onetoone", myPageService.getOnetooneList(pagingVO, total, 1));
			
			return listMap;
		
		} else {
			
			total = myPageService.getTotal(pagingVO, "review"); // 테이블 데이터 개수 구하기.
			listMap.put("review", myPageService.getReviewList(pagingVO, total, 1));
			
			total = myPageService.getTotal(pagingVO, "qna"); // 테이블 데이터 개수 구하기.
			listMap.put("qna", myPageService.getQnaList(pagingVO, total, 1));
			
			total = myPageService.getTotal(pagingVO, "onetoone"); // 테이블 데이터 개수 구하기.
			listMap.put("onetoone", myPageService.getOnetooneList(pagingVO, total, 1));
			
			return listMap;
		}
	}
	
}
