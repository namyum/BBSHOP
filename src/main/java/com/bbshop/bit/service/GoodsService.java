package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.GoodsQnaVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.MoreDetailVO;
import com.bbshop.bit.domain.PageDTO;
import com.bbshop.bit.domain.PagingVO;

public interface GoodsService {
	
	// 카테고리 int > String
	public String category(int category);
	
	/* 페이징 O, 상품 목록 */
	public List<GoodsVO> getGoodsList(int category, PagingVO pagingVO, String sorting, String min_amount, String max_amount, 
			List<String> positions, List<String> colors_list, List<String> brands);

	/* 카테고리별  goods 데이터 개수 */
	public int getTotalCount(int category);
	
	/* ajax로 데이터 불러올 때 전체 개수 구하기 */
	public int getTotalCountAjax(int category, PagingVO pagingVO, String sorting, String min_amount, String max_amount,
			List<String> positions, List<String> colors_list, List<String> brands);
	
	/* 상품 조회 */
	public GoodsVO getGoodsInfo(Long goods_num);
	
	
	
	
	
	
	/* 상품 QNA 등록 */
	public void insertGoodsQna(GoodsQnaVO qna);
	
	/* 상품 QNA 목록 */
	public List<GoodsQnaVO> getQnaList(PagingVO pagingVO, long goods_num);


	

	
	
	/* user_key를 이용해 moredetail을 가져온다.*/
	public MoreDetailVO findDetail(long user_key);
	
	/* 추천상품 - 회원 */
	public List<GoodsVO> recommendGoodsList(MoreDetailVO moredetail); 
	
	/* 추천상품 - 비회원 */
	public List<GoodsVO> recommendBestList();

	
}
