package com.bbshop.bit.mapper;

import java.util.List;
import java.util.Map;

import com.bbshop.bit.domain.FAQVO;
import com.bbshop.bit.domain.Gd_BallVO;
import com.bbshop.bit.domain.Gd_BatVO;
import com.bbshop.bit.domain.Gd_GloveVO;
import com.bbshop.bit.domain.Gd_ShoesVO;
import com.bbshop.bit.domain.Gd_UniformVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.OrderVO;

public interface AdminMapper {

	public List<GoodsVO> getGoodsList();
	public List<Object> getGloveList(long goods_num);
	public List<Object> getBatList(long goods_num);
	public List<Object> getUniformList(long goods_num);
	public List<Object> getShoesList(long goods_num);
	public List<Object> getBallList(long goods_num);
	public void insertGoods(GoodsVO vo);
	public void insertGoodsGlove(Gd_GloveVO glove);
	public void insertGoodsBat(Gd_BatVO bat);
	public void insertGoodsBall(Gd_BallVO ball);
	public void insertGoodsShoes(Gd_ShoesVO shoes);
	public void insertGoodsUniform(Gd_UniformVO uniform);
	public int getGoodsNum(GoodsVO vo);
	public void deleteGoods(Map<String, Object> deleteMap);
	public List<FAQVO> getFAQList();
	public void write_FAQ(FAQVO faq);
	public void deleteFAQ(Map<String, Object> deleteMap);
	public FAQVO getFAQ(int faq_num);
	public void ModifyFAQ(FAQVO faq);
	public List<OrderVO> getAllOrders();
	public String getUserId(long user_key);
}
