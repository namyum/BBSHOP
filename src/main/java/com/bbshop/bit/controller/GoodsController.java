package com.bbshop.bit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.service.GoodsService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class GoodsController {
	
	private GoodsService service;
	
	
	// category, sorting 을 전달받는다, category와 goodsList를 model에 담아 view로 뿌려줌.
	@GetMapping("/goods_list")
	public String getGoodsList(PagingVO	pagingVO, @RequestParam int category, @RequestParam String sorting, Model model) {
		log.info("Controller..getGoodsList");
		log.info("Controller.." + sorting);
		
		model.addAttribute("categoryInt", category);
		model.addAttribute("categoryString", service.category(category));
		
		// 4가지 sorting : new, best, lowPrice, highPrice
		if(sorting == "new")
			model.addAttribute("goodsList", service.getGoodsList_New(pagingVO, category));
		else if(sorting.equals("best"))
			model.addAttribute("goodsList", service.getGoodsList_Best(pagingVO, category));
		else if(sorting.equals("lowPrice"))
			model.addAttribute("goodsList", service.getGoodsList_LowPrice(pagingVO, category));
		else if(sorting.equals("highPrice"))
			model.addAttribute("goodsList", service.getGoodsList_HighPrice(pagingVO, category));
		
		return "shoppingMall/goods/goods_list";
	}

}
