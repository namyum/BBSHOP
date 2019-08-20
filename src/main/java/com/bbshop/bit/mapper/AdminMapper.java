package com.bbshop.bit.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.bbshop.bit.domain.Criteria;
import com.bbshop.bit.domain.DormantUserVO;
import com.bbshop.bit.domain.FAQVO;
import com.bbshop.bit.domain.Gd_BallVO;
import com.bbshop.bit.domain.Gd_BatVO;
import com.bbshop.bit.domain.Gd_GloveVO;
import com.bbshop.bit.domain.Gd_ShoesVO;
import com.bbshop.bit.domain.Gd_UniformVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.MemberVO;
import com.bbshop.bit.domain.ReviewVO;

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
	
	
	/* 의정 - 후기관리 */
	// 후기 목록 출력
	public List<ReviewVO> getReviewList(@Param("criteria") Criteria criteria, @Param("score") long score);
	// 후기 개수
	public int getReviewCount(@Param("score") long score);
	// 후기 목록에 출력할 회원 아이디
	public String getID(@Param("user_key") long user_key);
	
	/* 의정 - 회원관리 - 회원탈퇴 */
	// 휴면유저 불러오기 
	public List<DormantUserVO> getDormantUsers(@Param("criteria") Criteria criteria);
	// 휴면 > 탈퇴
	public void modifyFlag(@Param("user_key") long user_key);
	
}
