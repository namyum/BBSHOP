//package com.bbshop.bit;
//
//import java.text.DateFormat;
//import java.util.Date;
//import java.util.Locale;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//@Controller
//public class HomeController {
//
//	// index - �룞�쁺�긽 諛� 濡쒓렇�씤
//	@RequestMapping("/")
//	public String index() {
//
//		return "shoppingMall/main/index";
//	}
//
//	/* �눥�븨紐� */
//	// �눥�븨紐� - 硫붿씤
//	@RequestMapping("/shopping_main")
//	public String shopping_main() {
//		return "shoppingMall/main/shopping_main";
//	}
//
//	// �눥�븨紐� - �긽�뭹 由ъ뒪�듃
//	@RequestMapping("/goods_list")
//	public String goods_list() {
//		return "shoppingMall/goods/goods_list";
//	}
//
//	// �눥�븨紐� - �긽�뭹 �젙蹂�
//	@RequestMapping("/goods_info")
//	public String goods_info() {
//		return "shoppingMall/goods/goods_info";
//	}
//
//	// �눥�븨紐� - �옣諛붽뎄�땲
//	@RequestMapping("/cart")
//	public String cart() {
//		return "shoppingMall/cart/cart";
//	}
//
//	// �눥�븨紐� 而ㅻ�ㅻ땲�떚 怨듯넻 - 怨좉컼�꽱�꽣 - FAQ(怨좉컼�꽱�꽣�쓽 硫붿씤)
//	@RequestMapping("/faq")
//	public String faq() {
//		return "shoppingMall/customerService/faq";
//	}
//
//	// �눥�븨紐� 而ㅻ�ㅻ땲�떚 怨듯넻 - 怨좉컼�꽱�꽣 - 1:1臾몄쓽
//	@RequestMapping("/one_to_one_list")
//	public String one_to_one_list() {
//		return "shoppingMall/customerService/one_to_one_list";
//	}
//
//	// �눥�븨紐� 而ㅻ�ㅻ땲�떚 怨듯넻 - 怨좉컼�꽱�꽣 - FAQ 湲� �긽�꽭蹂닿린
//	@RequestMapping("/faq_detail")
//	public String faq_detail() {
//		return "shoppingMall/customerService/faq_detail";
//	}
//
//	// �눥�븨紐� 而ㅻ�ㅻ땲�떚 怨듯넻 - 怨좉컼�꽱�꽣 - FAQ 湲� �닔�젙
//	@RequestMapping("/faq_modify")
//	public String faq_modify() {
//		return "shoppingMall/customerService/faq_modify";
//	}
//
//	// �눥�븨紐� 而ㅻ�ㅻ땲�떚 怨듯넻 - 怨좉컼�꽱�꽣 - 1:1臾몄쓽 湲� �긽�꽭蹂닿린
//	@RequestMapping("/one_to_one_list_detail")
//	public String one_to_one_list_detail() {
//		return "shoppingMall/customerService/one_to_one_list_detail";
//	}
//
//	// �눥�븨紐� 而ㅻ�ㅻ땲�떚 怨듯넻 - 怨좉컼�꽱�꽣 - 1:1臾몄쓽 湲� �닔�젙�븯湲�
//	@RequestMapping("/one_to_one_list_modify")
//	public String one_to_one_list_modify() {
//		return "shoppingMall/customerService/one_to_one_list_modify";
//	}
//
//	// �눥�븨紐� - 二쇰Ц - 二쇰Ц�븯湲�
//	@RequestMapping("/order")
//	public String order() {
//		return "shoppingMall/order/order";
//	}
//
//	// �눥�븨紐� - 二쇰Ц - 二쇰Ц �솗�씤 李�
//	@RequestMapping("/order_confirmation")
//	public String order_confirmation() {
//		return "shoppingMall/order/order_confirmation";
//	}
//
//	/* �눥�븨紐� 而ㅻ�ㅻ땲�떚 怨듯넻 - 留덉씠 �럹�씠吏� */
//	// 留덉씠�럹�씠吏�
//	@RequestMapping("/mypage")
//	public String mypage() {
//		return "shoppingMall/mypage/mypage";
//	}
//
//	// 留덉씠�럹�씠吏� - 二쇰Ц/諛곗넚 議고쉶
//	@RequestMapping("/order_status")
//	public String order_status() {
//		return "shoppingMall/mypage/order_status";
//	}
//
//	// 留덉씠�럹�씠吏� - �궡媛� �궓湲� 湲�
//	@RequestMapping("/mypost")
//	public String mypost() {
//		return "shoppingMall/mypage/mypost";
//	}
//
//	// 留덉씠�럹�씠吏� - �궡媛� �궓湲� 湲� - �긽�뭹 �썑湲�
//	@RequestMapping("/mypost_review")
//	public String mypost_review() {
//		return "shoppingMall/mypage/mypost_review";
//	}
//
//	// 留덉씠�럹�씠吏� - �궡媛� �궓湲� 湲� - �긽�뭹 臾몄쓽
//	@RequestMapping("/mypost_qna")
//	public String mypost_qna() {
//		return "shoppingMall/mypage/mypost_qna";
//	}
//
//	// 留덉씠�럹�씠吏� - �궡媛� �궓湲� 湲� - 1��1 臾몄쓽
//	@RequestMapping("/mypost_one_to_one")
//	public String mypost_one_to_one() {
//		return "shoppingMall/mypage/mypost_one_to_one";
//	}
//
//	/*
//	 * �븘吏� // 留덉씠�럹�씠吏� - �궡媛� �궓湲� 湲� - 1��1 臾몄쓽 �긽�꽭/議고쉶
//	 * 
//	 * @RequestMapping("/mypost_one_to_one_info") public String
//	 * mypost_one_to_one_info() { return
//	 * "shoppingMall/mypage/mypost_one_to_one_info"; }
//	 */
//
//	// 留덉씠�럹�씠吏� - �쉶�썝 �젙蹂� �닔�젙
//	@RequestMapping("/modify_info")
//	public String modify_info() {
//		return "shoppingMall/mypage/modify_info";
//	}
//
//	// 留덉씠�럹�씠吏� - �쉶�썝 �젙蹂� �닔�젙 - 諛곗넚吏� �닔�젙
//	@RequestMapping("/modify_addr")
//	public String modify_addr() {
//		return "shoppingMall/mypage/modify_addr";
//	}
//
//	// 留덉씠�럹�씠吏� - �쉶�썝 �젙蹂� �닔�젙 - 諛곗넚吏� �벑濡�
//	@RequestMapping("/write_addr")
//	public String write_addr() {
//		return "shoppingMall/mypage/write_addr";
//	}
//
//	// 留덉씠�럹�씠吏� - �쉶�썝 �젙蹂� �닔�젙 - �쉶�썝�깉�눜
//	@RequestMapping("/withdraw")
//	public String withdraw() {
//		return "shoppingMall/mypage/withdraw";
//	}
//
//	/* 而ㅻ�ㅻ땲�떚 */
//	// 而ㅻ�ㅻ땲�떚 - 硫붿씤
//	@RequestMapping("/community_main")
//	public String community_main() {
//		return "shoppingMall/main/community_main";
//	}
//
//	// 而ㅻ�ㅻ땲�떚 - 寃뚯떆�뙋
//	@RequestMapping("/community_list")
//	public String community_list() {
//		return "shoppingMall/community/community_list";
//	}
//
//	// 而ㅻ�ㅻ땲�떚 - 湲��벐湲�
//	@RequestMapping("/community_form")
//	public String community_form() {
//		return "shoppingMall/community/community_form";
//	}
//
//	// 而ㅻ�ㅻ땲�떚 - 湲� �긽�꽭
//	@RequestMapping("/community_detail")
//	public String community_detail() {
//		return "shoppingMall/community/community_detail";
//	}
//
//	// 而ㅻ�ㅻ땲�떚 - 湲� �닔�젙
//	@RequestMapping("/community_modify")
//	public String community_modify() {
//		return "shoppingMall/community/community_modify";
//	}
//
//}
