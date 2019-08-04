package com.bbshop.bit.mapper;

import java.util.HashMap;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.PagingVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class GoodsMapperTests {

	@Setter(onMethod_ = @Autowired)
	private GoodsMapper mapper;
	
//	@Test
	public void testGetList() {
//		mapper.getGoodsList_New(1).forEach(goods -> log.info(goods));
//		mapper.getGoodsList_Best(1).forEach(goods -> log.info(goods));
//		mapper.getGoodsList_LowPrice(1).forEach(goods -> log.info(goods));
//		mapper.getGoodsList_HighPrice(1).forEach(goods -> log.info(goods));
	}
	
	@Test
	public void testPaging() {
		
		PagingVO pagingVO = new PagingVO();
		
		//8개씩 2페이지
		pagingVO.setPageNum(2);
		pagingVO.setAmount(8);
		
		//검색 조건 설정
		pagingVO.setType("N");
		pagingVO.setKeyword("이치로");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagingVO", pagingVO);
		map.put("category", 1);
		map.put("sorting", "new");
		map.put("min_amount", 1000);
		map.put("max_amount", 500000);
		
		
		List<GoodsVO> goodsList = mapper.getGoodsList(map);
		
		goodsList.forEach(goods -> log.info(goods));
	}
	
//	@Test 
	public void testGetGoodsInfo() {
		GoodsVO g = new GoodsVO();
		g = mapper.getGoodsInfo(8);
		
		log.info(g);
	}
}
