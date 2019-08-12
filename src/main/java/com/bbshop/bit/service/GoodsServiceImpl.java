package com.bbshop.bit.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.GoodsQnaVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.MoreDetailsVO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.mapper.GoodsMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor // �ڵ����� ������̼�
public class GoodsServiceImpl implements GoodsService {
	
	private GoodsMapper mapper;

	// ī�װ� int > String
	@Override
	public String category(int category) {
		switch(category) {
			case 1: return "글러브";
			case 2: return "��Ʈ";
			case 3: return "������";
			case 4: return "�߱�ȭ";
			default: return "�߱���";
		}
	}
	
	/* ����¡ O */
	@Override
	public List<GoodsVO> getGoodsList(int category, PagingVO pagingVO, String sorting, String min_amount, String max_amount, 
			List<String> positions, List<String> colors, List<String> brands) {
		
		log.info("getGoodsList...Ajax..With Paging................");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("category", category);
		map.put("pagingVO", pagingVO);
		map.put("sorting", sorting);
		
		if ((min_amount != null && !("".equals(min_amount))) && (max_amount != null && !("".equals(max_amount)))) {
			map.put("min_amount", Integer.parseInt(min_amount));
			map.put("max_amount", Integer.parseInt(max_amount));
		}
		
		// �˻� ����Ʈ �迭�� ���� ��� ������, map�� ��´�.
		if (positions != null) {
		
			map.put("positions", positions);
		}
		
		if (colors != null) {
			
			map.put("colors", colors);
		}
		
		if (brands != null) {
			
			map.put("brands", brands);
		}
		
		return mapper.getGoodsList(map);
	}
	
	/* ī�װ���  goods ������ ���� */
	@Override
	public int getTotalCount(int category) {
		log.info("get Total Count - " + category);
		
		return mapper.getTotalCount(category);
	}
	
	/* ��ǰ ��ȸ */
	@Override
	public GoodsVO getGoodsInfo(Long goods_num) {
		log.info("getGoodsInfo....goods_num : "+goods_num+"............");
		
		return mapper.getGoodsInfo(goods_num);
	}
	
	/* ��ǰ QNA ��� */
	@Override
	public void insertGoodsQna(GoodsQnaVO qna) {
		log.info("Service - insertGoodsQna");
		
		mapper.insertGoodsQnaSelectKey(qna);
	}

	/* ��ǰ QNA ��� */
	@Override
	public List<GoodsQnaVO> getQnaList(PagingVO pagingVO, long goods_num) {
		log.info("Service - getQnaList");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagingVO", pagingVO);
		map.put("goods_num", goods_num);

		return mapper.getQnaList(map);
	}
	
	/* user_key�� �̿��� moredetail�� �����´�. */
	@Override
	public MoreDetailsVO findDetail(long user_key) {
		return mapper.findDetail(user_key);
	}
	
	/* ��õ��ǰ - ȸ�� */
	@Override
	public List<GoodsVO> recommendGoodsList(MoreDetailsVO moredetail) {
		return mapper.recommendGoodsList(moredetail);
	}
	
	/* ��õ��ǰ - ��ȸ�� */
	@Override
	public List<GoodsVO> recommendBestList() {
		return mapper.recommendBestList();
	}
	
	/* ajax�� ������ �ҷ��� �� ��ü ���� ���ϱ� */	
	@Override
	public int getTotalCountAjax(int category, PagingVO pagingVO, String sorting, String min_amount, String max_amount,
			List<String> positions, List<String> colors, List<String> brands) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("category", category);
		map.put("pagingVO", pagingVO);
		map.put("sorting", sorting);
		
		if ((min_amount != null && !("".equals(min_amount))) && (max_amount != null && !("".equals(max_amount)))) {
			map.put("min_amount", Integer.parseInt(min_amount));
			map.put("max_amount", Integer.parseInt(max_amount));
		}
		
		// �˻� ����Ʈ �迭�� ���� ��� ������, map�� ��´�.
		if (positions != null) {
		
			map.put("positions", positions);
		}
		
		if (colors != null) {
			
			map.put("colors", colors);
		}
		
		if (brands != null) {
			
			map.put("brands", brands);
		}
		
		return mapper.getTotalCountAjax(map);
	}

	@Override
	public void addGoodsToCart(GoodsVO goods, int qty, long user_key) {

		mapper.addGoodsToCart(goods, qty, user_key); 
	}


	
	
}
