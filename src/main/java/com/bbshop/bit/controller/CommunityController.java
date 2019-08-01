package com.bbshop.bit.controller;

import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bbshop.bit.domain.CommunityVO;
import com.bbshop.bit.domain.PageDTO;
import com.bbshop.bit.domain.PagingVO;
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
	public String community_form(Model model) {
		
		model.addAttribute("nickname",communityService.getNickname(1));
		
		return "shoppingMall/community/community_form";
	}
	
	// 커뮤니티 - 글 상세
	@RequestMapping("/community_detail.do")
	public String community_detail(Model model, @RequestParam("BOARD_NUM") Long board_num) {
		
		model.addAttribute("post", communityService.getPost((long) board_num));
		model.addAttribute("count", communityService.getCount(board_num));
		return "shoppingMall/community/community_detail";
	}

	
	// 여기 컨트롤러에 크롤링을 넣거나 메서드로 불러오거나
//	@RequestMapping("/community_detail.do")
//	public String community_detail(Model model, @RequestParam("BOARD_NUM") Long board_num) {
//		
//		model.addAttribute("post", communityService.getPost((long) board_num));
//		return "forward:/commu";
//	}

	// 커뮤니티 - 글 수정
	@RequestMapping("/community_modify.do")
	public String community_modify(Model model, @RequestParam("BOARD_NUM") Long board_num) {
		
		model.addAttribute("post", communityService.getPost((long) board_num));
		return "shoppingMall/community/community_modify";
	}
	
	// 페이징 포함한 리스트
	
	@RequestMapping("/community_list.do")
	public String list(PagingVO pagingvo, Model model) {
		
		System.out.println(pagingvo);
		
		model.addAttribute("list", communityService.getList(pagingvo));
		model.addAttribute("pageMaker", new PageDTO(pagingvo, 123));
		
		return "shoppingMall/community/community_list";
	}
	
	@RequestMapping("/communityWriteAction.do")
	public String communityWriteAction(CommunityVO community, Model model) throws Exception{
			
		int res = communityService.insertPost(community);
		model.addAttribute("BOARD_NUM",communityService.getBoardNum());
		
		if(res == 1) {
			System.out.println("글이 등록되었습니다.");
		} else {
			System.out.println("글 등록에 실패하였습니다.");
		}
		return "redirect:/community_detail.do";
		
	}
	
	@RequestMapping("/communityDeleteAction.do")
	public String communityDeleteAction(@RequestParam("BOARD_NUM") Long board_num) {
		
		int res = communityService.deletePost(board_num);
		
		if(res == 1) {
			System.out.println("글이 삭제되었습니다.");
		} else {
			System.out.println("글 삭제에 실패했습니다.");
		}
		
		return "redirect:/community_list.do";
	}
	
	@RequestMapping("/communityUpdateAction.do")
	public String communityUpdateAction(CommunityVO community, Model model) {
		
		int res = communityService.updatePost(community);
		
		if(res == 1) {
			System.out.println("글이 수정되었습니다.");
		} else {
			System.out.println("글 수정에 실패했습니다.");
		}
		
		return "redirect:/community_detail.do";
	}
	
	@RequestMapping(value = "/crawlRank.do", method = RequestMethod.GET)
	public ModelAndView crawl(ModelAndView model) {
		String url = "https://sports.news.naver.com/kbaseball/index.nhn";
        Document doc = null;
         
        try {
            doc = Jsoup.connect(url).get();
        } catch (IOException e) {
            e.printStackTrace();
        }
         
        Elements element = doc.select("div.home_news");
         
        String title = element.select("h2").text().substring(0, 4);
       
        ArrayList<String> list_text = new ArrayList<String>(); 
        ArrayList<String> list_link = new ArrayList<String>(); 
        
        for(Element el : element.select("li")) { 
        	String text = el.text().toString();
        	
        	// 뉴스 클릭을 위한
        	String link = "https://sports.news.naver.com" + el.select("a").attr("href");
            list_text.add(text);
            list_link.add(link);
        }  
		
        model.addObject("title", title);
        model.addObject("list_text", list_text);
        model.addObject("list_link", list_link);
        model.setViewName("crawl");
        
		return model;
	}

}
