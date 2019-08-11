package com.bbshop.bit.mapper;

import java.util.HashMap;
import java.util.List;

import com.bbshop.bit.domain.GoodsQnaVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.MoreDetailsVO;
import com.bbshop.bit.domain.ReviewVO;

public interface GoodsMapper {
		
	// ����¡ O
	// ��ǰ ���, sorting���� ���� ��������
	// hashmap[pagingVO(pageNum,amount), category, sorting]
	public List<GoodsVO> getGoodsList(HashMap<String, Object> map);
	
	// ī�װ� ��, goods ������ ���� 
	public int getTotalCount(int category);
	
	// ��ǰ ��ȸ
	public GoodsVO getGoodsInfo(long goods_num);
	
	
	
	

	
	// ��ǰ QNA ��� - insert���� ����ǰ� ������  pk(������) ���� �˾ƾ� �ϴ� ���
	public void insertGoodsQnaSelectKey(GoodsQnaVO qna);
	
	// ��ǰ QNA ��� (goods_num�� ī�װ�)
	// hashmap[pagingVO(pageNum, amount), goods_num]
	public List<GoodsQnaVO> getQnaList(HashMap<String, Object> map);
	
	// 상품 REVIEW 목록 출력 (goods_num이 상품 카테고리)
	// hashmap[pagingVO(pageNum, amount), goods_num]
	public List<ReviewVO> getReviewList(HashMap<String, Object> map);
	
	
	// user_key로 nickname 가져오기
	public String getNickName(long user_key);
	
	
	
	
	// user_key�� �̿��� moredetail�� �����´�.
	public MoreDetailsVO findDetail(long user_key);
	
	// ��õ ��ǰ - ȸ��
	public List<GoodsVO> recommendGoodsList(MoreDetailsVO moredetail);
	
	// ��õ ��ǰ - ��ȸ��
	public List<GoodsVO> recommendBestList();

	/* ajax�� ������ �ҷ��� �� ��ü ���� ���ϱ� */	
	public int getTotalCountAjax(HashMap<String, Object> map);
}
