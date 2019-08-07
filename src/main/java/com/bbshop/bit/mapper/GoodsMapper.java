package com.bbshop.bit.mapper;

import java.util.HashMap;
import java.util.List;

import com.bbshop.bit.domain.GoodsQnaVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.MoreDetailVO;

public interface GoodsMapper {
		
	// 페이징 O
	// 상품 목록, sorting값에 따라 동적쿼리
	// hashmap[pagingVO(pageNum,amount), category, sorting]
	public List<GoodsVO> getGoodsList(HashMap<String, Object> map);
	
	// 카테고리 별, goods 데이터 개수 
	public int getTotalCount(int category);
	
	// 상품 조회
	public GoodsVO getGoodsInfo(long goods_num);
	
	
	
	

	
	// 상품 QNA 등록 - insert문이 실행되고 생성된  pk(시퀀스) 값을 알아야 하는 경우
	public void insertGoodsQnaSelectKey(GoodsQnaVO qna);
	
	// 상품 QNA 목록 (goods_num이 카테고리)
	// hashmap[pagingVO(pageNum, amount), goods_num]
	public List<GoodsQnaVO> getQnaList(HashMap<String, Object> map);
	
	
	
	
	
	
	// user_key를 이용해 moredetail을 가져온다.
	public MoreDetailVO findDetail(long user_key);
	
	// 추천 상품 - 회원
	public List<GoodsVO> recommendGoodsList(MoreDetailVO moredetail);
	
	// 추천 상품 - 비회원
	public List<GoodsVO> recommendBestList();

	/* ajax로 데이터 불러올 때 전체 개수 구하기 */	
	public int getTotalCountAjax(HashMap<String, Object> map);
}
