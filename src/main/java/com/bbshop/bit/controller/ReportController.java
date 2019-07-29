package com.bbshop.bit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bbshop.bit.domain.ReportVO;
import com.bbshop.bit.service.ReportService;

@Controller
public class ReportController {
	
	@Autowired
	private ReportService reportService;
	
	// 신고 등록
	@RequestMapping("/report_registerAction.do")
	public String registerAction(ReportVO reportvo, Model model) throws Exception {

		int res = reportService.registerReport(reportvo);
		model.addAttribute("BOARD_NUM", reportvo.getBOARD_NUM());
		
		if(res == 1) {
			System.out.println("신고가 등록되었습니다.");
		} else {
			System.out.println("신고 등록에 실패하였습니다.");
		}
		return "redirect:/community_detail.do";
	}
	
}
