package com.bbshop.bit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.bbshop.bit.domain.FAQVO;

public interface FAQMapper {
	
	//@Select("select * from tbl_board where bno > 0")
	public List<FAQVO> FAQ_getList();
	
	public FAQVO FAQ_read(Long bno);
	
}
