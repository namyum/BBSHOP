package com.bbshop.bit.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bbshop.bit.domain.GoodsQnaVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.MoreDetailsVO;

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
	
	
	
	
	
	
	// user_key�� �̿��� moredetail�� �����´�.
	public MoreDetailsVO findDetail(long user_key);
	
	// ��õ ��ǰ - ȸ��
	public List<GoodsVO> recommendGoodsList(MoreDetailsVO moredetail);
	
	// ��õ ��ǰ - ��ȸ��
	public List<GoodsVO> recommendBestList();

	/* ajax�� ������ �ҷ��� �� ��ü ���� ���ϱ� */	
	public int getTotalCountAjax(HashMap<String, Object> map);

	// 장바구니 목록에 상품을 넣는 메소드
	public void addGoodsToCart(@Param("goods") GoodsVO goods, @Param("qty") int qty, @Param("user_key") long user_key);
}
