package com.bbshop.bit.service;

import java.util.List;
import java.util.Map;

import com.bbshop.bit.domain.FAQVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.OrderVO;

public interface AdminService {

	public List<GoodsVO> getGoodsList();
	public List<Object> getGdList(int category, long goods_NUM);
	public void insertGoods(GoodsVO vo, Object obj);
	public void deleteGoods(Map<String, Object> deleteMap);
	public List<FAQVO> getFAQList();
	public void write_FAQ(FAQVO faq);
	public void deleteFAQ(Map<String, Object> deleteMap);
	public FAQVO getFAQ(int faq_num);
	public void ModifyFAQ(FAQVO faq);
	public List<OrderVO> getAllOrders();
	public String getUserId(long user_key);
}
