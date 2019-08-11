package com.bbshop.bit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bbshop.bit.domain.OnetoOneVO;
import com.bbshop.bit.domain.PageDTO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.service.OnetoOneService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class OnetoOneController {
	
	@Autowired
	private OnetoOneService onetooneservice;

	@Autowired
	private HttpSession session;
	
	@RequestMapping("/onetoonelist.do")
	public String list(PagingVO pag ,Model model) {
		
		session.setAttribute("nickname", "슈퍼맨");

		String nickname = (String)session.getAttribute("nickname");
		
		model.addAttribute("list", onetooneservice.OnetoOne_getList(pag));
		
		int total = onetooneservice.getTotal(pag);
		
		model.addAttribute("pageMaker", new PageDTO(pag, total));
		model.addAttribute("nickname", nickname);

		return "shoppingMall/customerService/one_to_one_list";
	}

	@RequestMapping("/onetoone_register.do")
	public String register(OnetoOneVO board, RedirectAttributes rttr) {
		
		session.setAttribute("member", (long)1);
		
		long user_key = (long)session.getAttribute("member");
		
		board.setUSER_KEY(user_key);
		board.setSEQ((long)1);
		board.setDEP((long)1);
		board.setLEV((long)1);
			
		onetooneservice.OnetoOne_register(board);
		
		return "redirect:/onetoonelist.do";
	}

	@GetMapping("/onetoone_get.do")
	public String get(@RequestParam("One_One_NUM") long One_One_NUM, @ModelAttribute("pag") PagingVO pag, Model model) {
		//@RequestParam("one_to_one_category") String category,
		
		System.out.println("글 번호 : " + One_One_NUM);
		
		model.addAttribute("board", onetooneservice.OnetoOne_get(One_One_NUM));
		//model.addAttribute("category", category);
		
		return "shoppingMall/customerService/one_to_one_list_detail";
	}

	@RequestMapping("/onetoone_modify.do")
	public String modify(@RequestParam("One_One_NUM") Long One_One_NUM, @ModelAttribute("pag") PagingVO pag, Model model, RedirectAttributes rttr) {


		OnetoOneVO onetooneVO = onetooneservice.OnetoOne_get(One_One_NUM);
		
		log.info("modify:" + onetooneVO);

		model.addAttribute("board", onetooneVO);


		if (onetooneservice.OnetoOne_modify(onetooneVO)) {
			
			rttr.addFlashAttribute("result", "success");
		}
		
		return "shoppingMall/customerService/one_to_one_list_modify";
	}
	
	@PostMapping("/onetoone_remove.do")
	public String remove(@RequestParam("ONE_ONE_NUM") Long One_One_NUM, RedirectAttributes rttr) {
		
		log.info("remove..." + One_One_NUM);
		
		onetooneservice.OnetoOne_remove(One_One_NUM);
		
		
		return "redirect:/onetoonelist.do";
	}
	
}
