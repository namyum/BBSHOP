package com.bbshop.bit.service;

import static org.junit.Assert.assertNotNull;

import java.util.HashMap;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bbshop.bit.domain.PagingVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class GoodsServiceTests {

	@Setter(onMethod_ = @Autowired)
	private GoodsService service;
	
//	@Test	// GoodsService 객체가 제대로 주입이 가능한지 확인
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testGetGoodsList() {
		
		PagingVO pagingVO = new PagingVO();
		
		//8개씩 2페이지
		pagingVO.setPageNum(1);
		pagingVO.setAmount(16);
		
		service.getGoodsList(1, pagingVO, "lowPrice", "1000", "300000").forEach(goods -> log.info(goods));
	}
	
//	@Test
	public void testGetGoodsInfo() {
		log.info(service.getGoodsInfo(8l));
	}
}