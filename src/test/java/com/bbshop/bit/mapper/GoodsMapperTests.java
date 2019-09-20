package com.bbshop.bit.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bbshop.bit.domain.Criteria;
import com.bbshop.bit.domain.DormantUserVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.PagingVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class GoodsMapperTests {

	@Setter(onMethod_ = @Autowired)
	private AdminMapper mapper;
	
//	@Setter(onMethod_ = @Autowired)
//	private OrderMapper ordermapper;
	
	@Test
	public void testGetList() {
		Criteria cri = new Criteria(1,5);
		List<DormantUserVO> list = mapper.getDormantUsers(cri);
		
		list.forEach(a -> log.info(list));
	}
	
	
//	@Test
	public void testPaging() {
		
		PagingVO pagingVO = new PagingVO();
		
		pagingVO.setPageNum(1);
		pagingVO.setAmount(8);
		
		log.info(pagingVO);
//		pagingVO.setKeyword("null");
		
		List<String> positions = new ArrayList<String>();
		positions.add("외야수");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagingVO", pagingVO);
		map.put("category", 1);
		map.put("sorting", "new");
		map.put("min_amount", 1000);
		map.put("max_amount", 500000);
		map.put("positions", positions);
		log.info(map.toString());
		
		
//		List<GoodsVO> goodsList = goodsMapper.getGoodsList(map);
		
//		goodsList.forEach(goods -> log.info(goods));
	}
	
//	@Test 
	public void testGetGoodsInfo() {
		GoodsVO g = new GoodsVO();
//		g = goodsMapper.getGoodsInfo(8);
		
		log.info(g);
	}
	/*
//	@Test
	public void testInsertGoodsQnaSelectKey() {
		GoodsQnaVO qna = new GoodsQnaVO();
		qna.setTitle("��ǰ ���� �մϴ�");
		qna.setContent("��ǰ ���� �մϴ� ��ǰ ���� �մϴ� ��ǰ ���� �մϴ� ��ǰ ���� �մϴ� ��ǰ ���� �մϴ� ��ǰ ���� �մϴ�");
		qna.setAttached_file("");
		qna.setGoods_num(18l);
		
		
		mapper.insertGoodsQnaSelectKey(qna);
		
		log.info(qna);
	}
	
//	@Test
	public void testQnaList() {
		PagingVO pagingVO = new PagingVO();
		
		//8���� 2������
		pagingVO.setPageNum(1);
		pagingVO.setAmount(6);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagingVO", pagingVO);
		map.put("goods_num", 21l);
		
//		List<GoodsQnaVO> qnaList = mapper.getQnaList(map);
//		qnaList.forEach(qna -> log.info(qna));
	}
	
//	@Test
	public void testRecommend() {
		MoreDetailsVO m = new MoreDetailsVO();
		
		m.setBRAND1("nike");
		m.setBRAND2("adidas");
		m.setBRAND3("brett");
		m.setPOSITION("����");
		m.setTEAM("lg");
		m.setUSER_KEY(950131);
		
		List<GoodsVO> list = mapper.recommendGoodsList(m);
		list.forEach(goods -> log.info(goods));
	}
	
//	@Test
	public void testFineDetail() {
		long user_key = 950131l;
		
		MoreDetailsVO md = mapper.findDetail(user_key);
		
		log.info(md);
		
	}
	
//	@Test
	public void testRecommendBest() {
		
		List<GoodsVO> list = mapper.recommendBestList();
		list.forEach(goods -> log.info(goods));
		
	}
	*/
}
