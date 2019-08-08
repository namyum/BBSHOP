package com.bbshop.bit.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bbshop.bit.domain.AddrVO;
import com.bbshop.bit.domain.GoodsQnaVO;
import com.bbshop.bit.domain.MemberVO;
import com.bbshop.bit.domain.MoreDetailsVO;
import com.bbshop.bit.domain.OnetooneVO;
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
	
	@Inject
    PasswordEncoder passwordEncoder;
	
	// �쉶�썝 �젙蹂� 議고쉶 -> �쟻由쎄툑 遺덈윭�삤湲�
	@RequestMapping(value = "/savings.do")
	public String getSavings(Model model, PagingVO pagingVO) {
		
		pagingVO.setAmount(5); // 기본 생성자로 설정되는 10에서 5로 바꿔준다.
						
		long sum = 0;
		long total = 0;
		long user_key = (long)session.getAttribute("member");
		
		total = myPageService.getTotal(pagingVO, "savings"); // 二쇰Ц 諛곗넚 �뀒�씠釉� �뜲�씠�꽣 媛쒖닔 援ы븯湲�.
		
		List<SavingsVO> savings_list = myPageService.getSavingsList(pagingVO, total, user_key);
		
		if (savings_list.size() == 0) {
			
			return "shoppingMall/mypage/mypage";
		}
		
		List<Long> all_savings = myPageService.getAllSavings(user_key);
		
		List<OrderVO> orders_list = myPageService.getAllOrdersList(user_key);
		
		long[] savings_total_list = new long[(int)total];
		
		// �궡 二쇰Ц 二쇰Ц �긽�깭蹂� 臾띔린
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
		
		// �쟻由쎄툑 �쟾泥� 珥앺빀
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
	
	// 二쇰Ц/諛곗넚 紐⑸줉 遺덈윭�삤湲�
	@RequestMapping("/order_status.do")
	public String getOrderStatus(Model model, PagingVO pagingVO) {
				
		pagingVO.setAmount(5); // 기본 생성자로 설정되는 10에서 5로 바꿔준다.
		
		long total = 0;
		long user_key = (long)session.getAttribute("member");

		total = myPageService.getTotal(pagingVO, "shop_order"); // 二쇰Ц 諛곗넚 �뀒�씠釉� �뜲�씠�꽣 媛쒖닔 援ы븯湲�.
		
		List<OrderVO> orders_list = myPageService.getOrdersList(pagingVO, total, user_key);
		
		model.addAttribute("pageMaker", new PageDTO(pagingVO, total));
		model.addAttribute("orders_list", orders_list);
		
		return "shoppingMall/mypage/order_status";
	}
	
	// 二쇰Ц/諛곗넚 -> 二쇰Ц 痍⑥냼
	@RequestMapping("/order_cancel.do")
	public String getOrderCanceled(Model model, @RequestParam("order_num") long order_num) {
				
		myPageService.cancelOrder(order_num);
		
		return "redirect:/order_status.do";
	}
	
	// �궡媛� �궓湲� 湲� 議고쉶
	@RequestMapping("/mypost.do")
	public String getMyPost(Model model, PagingVO pagingVO) {
		
		pagingVO.setAmount(5);
		
		long total = 0;
		long sum = 0;
		long user_key = (long)session.getAttribute("member");

		total = myPageService.getTotal(pagingVO, "qna");
		List<GoodsQnaVO> qna_list = myPageService.getQnaList(pagingVO, total, user_key);
		sum += total;		
		
		total = myPageService.getTotal(pagingVO, "review");
		List<ReviewVO> review_list = myPageService.getReviewList(pagingVO, total, user_key);
		sum += total;
		
		total = myPageService.getTotal(pagingVO, "onetoone");
		List<OnetooneVO> onetoone_list = myPageService.getOnetooneList(pagingVO, total, user_key);
		sum += total;
		
		PageDTO pageMaker = new PageDTO(pagingVO, sum);
			
		for (int i = 0; i < qna_list.size(); i++) {
			qna_list.get(i).setQna_num(sum--);
		}
		
		for (int i = 0; i < onetoone_list.size(); i++) {
			onetoone_list.get(i).setOne_one_num(sum--);
		}
		
		for (int i = 0; i < review_list.size(); i++) {
			review_list.get(i).setRv_num(sum--);
		}
		

		
		model.addAttribute("qna_list", qna_list);
		model.addAttribute("onetoone_list", onetoone_list);
		model.addAttribute("review_list", review_list);
		model.addAttribute("pageMaker", pageMaker);

		return "shoppingMall/mypage/mypost";
	}
	
	// �쉶�썝 �젙蹂� �닔�젙 �럹�씠吏�
	@RequestMapping("/modify_info.do")
	public String getModifyInfo(Model model) {
		
		long user_key = (long)session.getAttribute("member");
		
		MemberVO member = myPageService.getUserInfo(user_key);
		List<AddrVO> addr_list = myPageService.getAddrList(user_key);
		MoreDetailsVO member_detail = myPageService.getDetail(user_key);
		
		member.setMEMBER_PW(""); // �븫�샇�솕�맂 鍮꾨�踰덊샇媛� �뱾�뼱�엳�뒗 硫ㅻ쾭VO�쓽 鍮꾨�踰덊샇 �븘�뱶瑜� 珥덇린�솕�빐以��떎.
		
		System.out.println("modify_info 而⑦듃濡ㅻ윭�쓽 �쉶�썝 �젙蹂� : " + member.toString());
		System.out.println("modify_info 而⑦듃濡ㅻ윭�쓽 諛곗넚吏� �젙蹂� : " + addr_list.toString());
		System.out.println("modify_info 而⑦듃濡ㅻ윭�쓽 異붽� �궗�빆 : " + member_detail.toString());
				
		model.addAttribute("memberInfo", member);
		model.addAttribute("addr_list", addr_list);
		model.addAttribute("member_detail", member_detail);
		
		return "shoppingMall/mypage/modify_info";
	}
	
	// �쉶�썝 �젙蹂� �닔�젙
	@RequestMapping("/modify_userInfo.do")
	public String modify_userInfo(MemberVO memberVO) {

		long user_key = (long)session.getAttribute("member");
		
		memberVO.setUSER_KEY(user_key); // user_key�뒗 怨꾩냽 �뜲由ш퀬 �떎�땲�뒗 �뜲�씠�꽣媛� �븘�땲�씪, �꽭�뀡�쑝濡쒕��꽣 諛쏆븘�빞 �븯誘�濡� �뀒�뒪�듃�긽 �엫�쓽濡� �꽔�쓬.
		
		myPageService.updateUserInfo(memberVO);
		
		return "forward:/modify_info.do";
	}
	
	// 諛곗넚吏� �닔�젙 �럹�씠吏�
	@RequestMapping("/modify_addr.do")
	public String modify_addr(@RequestParam("num") int index, Model model) {
		
		long user_key = (long)session.getAttribute("member");

		List<AddrVO> addr_list = myPageService.getAddrList(user_key);
		
		AddrVO addrVO = addr_list.get(index-1);

		model.addAttribute("addrVO", addrVO);
		model.addAttribute("num", index);
		
		return "shoppingMall/mypage/modify_addr";
	}
	
	// 諛곗넚吏� �닔�젙�븯湲�
	@RequestMapping("/modify_userAddr.do")
	public String modify_userAddr(AddrVO addrVO, @RequestParam("zipcode") long zipcode) {
		
		long user_key = (long)session.getAttribute("member");

		addrVO.setUser_key(user_key);
		addrVO.setZc_key(zipcode);
		
		System.out.println("modify_userAddr 而⑦듃濡ㅻ윭�쓽 addrVO : " + addrVO.toString());
		
		myPageService.updateAddrInfo(addrVO);
		
		return "forward:/modify_info.do";
	}

	// 諛곗넚吏� �벑濡� �럹�씠吏�
	@RequestMapping("/write_addr.do")
	public String write_addr(@RequestParam("num") int num, Model model) {
		
		model.addAttribute("num", num);
		
		return "shoppingMall/mypage/write_addr";
	}
	
	// 諛곗넚吏� �벑濡앺븯湲�
	@RequestMapping("/write_userAddr.do")
	public String write_userAddr(AddrVO addrVO, @RequestParam("zipcode") long zipcode) {
				
		long user_key = (long)session.getAttribute("member");

		addrVO.setUser_key(user_key);
		addrVO.setZc_key(zipcode);
		
		System.out.println("write_userAddr 而⑦듃濡ㅻ윭�쓽 addrVO : " + addrVO.toString());
		
		myPageService.insertAddrInfo(addrVO);
		
		return "forward:/modify_info.do";
	}
	
	// 諛곗넚吏� �궘�젣�븯湲�
	@RequestMapping("/delete_userAddr.do")
	public String delete_userAddr(@RequestParam("num") int num) {
		
		long user_key = (long)session.getAttribute("member");

		myPageService.deleteAddrInfo(user_key, num);
		
		return "forward:/modify_info.do";
	}

	// �쉶�썝 �깉�눜 �럹�씠吏�
	@RequestMapping("/withdraw.do")
	public String withdraw() {
		
		return "shoppingMall/mypage/withdraw";
	}
	
	// �쉶�썝 �깉�눜
	@RequestMapping("/secede.do")
	public String secede() {
		
		long user_key = (long)session.getAttribute("member");

		myPageService.deleteUserInfo(user_key);
		
		return "shoppingMall/main/shopping_main";
	}
	
	// 異붽� �궗�빆 �닔�젙�븯湲�
	@RequestMapping("/modify_detail.do")
	public String modify_detail(MoreDetailsVO moreDetailsVO) {
		
		long user_key = (long)session.getAttribute("member");

		moreDetailsVO.setUSER_KEY(user_key);
		
		System.out.println("而⑦듃濡ㅻ윭�뿉�꽌�쓽 VO : " + moreDetailsVO.toString());
		
		myPageService.updateDetailInfo(moreDetailsVO, user_key);
		
		System.out.println("mapper �넻怨�");
		
		return "redirect:/modify_info.do";
	}
	
	// �땳�꽕�엫 以묐났 �솗�씤
	@RequestMapping(value = "/nickCheck.do", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String nickCheck(HttpServletRequest request) {
		
		String nickname = request.getParameter("NICKNAME");
		
		int result = myPageService.nickCheck(nickname);
		
		return Integer.toString(result);
	}

// ajax 而⑦듃濡ㅻ윭

	// ajax濡� �쟻由쎄툑 媛��졇 �삤湲�
	@RequestMapping(value = "/savingListPaging.do", consumes = "application/json")
	@ResponseBody
	public List<SavingsVO> getSavingListPaging(@RequestBody PagingVO pagingVO) {
		
		long sum = 0;
		long total = 0;
		long user_key = (long)session.getAttribute("member");

		total = myPageService.getTotal(pagingVO, "savings"); // 二쇰Ц 諛곗넚 �뀒�씠釉� �뜲�씠�꽣 媛쒖닔 援ы븯湲�.
		
		List<SavingsVO> savings_list = myPageService.getSavingsList(pagingVO, total, user_key);
		
		List<Long> all_savings = myPageService.getAllSavings(user_key);
		
		long[] savings_total_list = new long[(int)total];
		
		// �쟻由쎄툑 �쟾泥� 珥앺빀
		for (int i = 0; i < all_savings.size(); i++) {
			
			sum += all_savings.get(i);
			savings_total_list[i] = sum;
		}
		
		int start = (int)(total - (pagingVO.getPageNum() * pagingVO.getAmount()));
		int end = (int)(total - ((pagingVO.getPageNum()-1) * pagingVO.getAmount()));
		
		int cnt = (int)(pagingVO.getAmount()-1);
		
		for (int i = start; i < end; i++) {
			
			savings_list.get(cnt--).setOr_savings_total(savings_total_list[i]);
		}
		
		return savings_list;
	}
	
	// ajax濡� 諛곗넚 紐⑸줉 媛��졇 �삤湲�
	@RequestMapping(value = "/orderListPaging.do", consumes = "application/json")
	@ResponseBody
	public List<OrderVO> getOrderListPaging(@RequestBody PagingVO pagingVO) {
		
		long total = 0;
		long user_key = (long)session.getAttribute("member");

		total = myPageService.getTotal(pagingVO, "shop_order"); // 二쇰Ц 諛곗넚 �뀒�씠釉� �뜲�씠�꽣 媛쒖닔 援ы븯湲�.
		
		List<OrderVO> orders_list = myPageService.getOrdersList(pagingVO, total, user_key);
		
		return orders_list;
	}
	
	// ajax濡� 泥댄겕諛뺤뒪 諛곗넚 紐⑸줉 媛��졇 �삤湲�
	@RequestMapping(value = "/orderListCheck.do", consumes = "application/json")
	@ResponseBody
	public List<OrderVO> getOrderListCheck(@RequestBody Map<String, Object> map) {
		
		long total = 0;
		long user_key = (long)session.getAttribute("member");

		long pageNum = (long)Integer.parseInt((String)map.get("pageNum"));
		long amount = (long)Integer.parseInt((String)map.get("amount"));
		long stts = (long)Integer.parseInt((String)map.get("stts"));
		
		PagingVO pagingVO = new PagingVO(pageNum, amount);

		total = myPageService.getTotal(pagingVO, "shop_order"); // 二쇰Ц 諛곗넚 �뀒�씠釉� �뜲�씠�꽣 媛쒖닔 援ы븯湲�.
		
		if (stts == 5) {
		
			List<OrderVO> orders_list = myPageService.getOrdersList(pagingVO, total, user_key);
			
			return orders_list;
		}

		List<OrderVO> orders_list = myPageService.getOrdersListStss(pagingVO, total, user_key, stts);
		
		return orders_list;
	}
	
	// ajax濡� �궡媛� �궓湲� 湲� 媛��졇 �삤湲�
	@RequestMapping(value = "/getTableWithAjax.do", consumes = "application/json")
	@ResponseBody
	public Map<String, Object> getTableWithAjax(@RequestBody Map<String, Object> map) {
		
		long user_key = (long)session.getAttribute("member");
		long total = 0;

		long pageNum = (long)Integer.parseInt((String)map.get("pageNum"));
		long amount = (long)Integer.parseInt((String)map.get("amount"));	
		String category = (String)map.get("category");
		
		Map<String, Object> listMap = new HashMap<>();
		
		PagingVO pagingVO = new PagingVO(pageNum, amount);
		
		if (!category.equals("all")) {
			
			total = myPageService.getTotal(pagingVO, category); // �뀒�씠釉� �뜲�씠�꽣 媛쒖닔 援ы븯湲�.
		}
				
		if (category.equals("review")) {
			
			listMap.put("review", myPageService.getReviewList(pagingVO, total, user_key));
			listMap.put("total", total);
			
			return listMap;
			
		} else if (category.equals("qna")) {
			
			listMap.put("qna", myPageService.getQnaList(pagingVO, total, user_key));
			listMap.put("total", total);

			return listMap;
			
		} else if (category.equals("onetoone")) {
			
			listMap.put("onetoone", myPageService.getOnetooneList(pagingVO, total, user_key));
			listMap.put("total", total);

			return listMap;
		
		// �쟾泥� 寃뚯떆湲� 異쒕젰 肄붾뱶
		} else {
			
			long sum = 0;
			
			total = myPageService.getTotal(pagingVO, "review");
			List<ReviewVO> review_list = myPageService.getReviewList(pagingVO, total, user_key);
			sum += total;

			total = myPageService.getTotal(pagingVO, "qna");
			List<GoodsQnaVO> qna_list = myPageService.getQnaList(pagingVO, total, user_key);
			sum += total;
			
			total = myPageService.getTotal(pagingVO, "onetoone");
			List<OnetooneVO> onetoone_list = myPageService.getOnetooneList(pagingVO, total, user_key);
			sum += total;
			
			for (int i = 0; i < qna_list.size(); i++) {
				qna_list.get(i).setQna_num(sum--);
			}
			
			for (int i = 0; i < onetoone_list.size(); i++) {
				onetoone_list.get(i).setOne_one_num(sum--);
			}
			
			for (int i = 0; i < review_list.size(); i++) {
				review_list.get(i).setRv_num(sum--);
			}
			
			listMap.put("qna", qna_list);		
			listMap.put("onetoone", onetoone_list);
			listMap.put("review", review_list);
			
			return listMap;
		}
	}
	
}
