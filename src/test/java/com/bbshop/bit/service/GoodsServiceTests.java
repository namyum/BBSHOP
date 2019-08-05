package com.bbshop.bit.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bbshop.bit.domain.GoodsQnaVO;
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
	
//	@Test
	public void testGetGoodsList() {
		
		PagingVO pagingVO = new PagingVO();
		
		//8개씩 2페이지
		pagingVO.setPageNum(1);
		pagingVO.setAmount(16);
		
		service.getGoodsList(1, pagingVO, "lowPrice", "1000", "500000").forEach(goods -> log.info(goods));
	}
	
//	@Test
	public void testGetGoodsInfo() {
		log.info(service.getGoodsInfo(8l));
	}
	
//	@Test
	public void testInsertGoodsQna() {
		GoodsQnaVO qna = new GoodsQnaVO();
		qna.setTitle("이베리코김치찌개");
		qna.setContent("상품 문의 사이즈 문의 색상 문의 포지션 문의 문의 문의문으이! 문의! 문의믄아ㅜ미ㅏ룩마 하잇");
		qna.setAttached_file("");
		qna.setGoods_num(3);
		
		service.insertGoodsQna(qna);
		
		log.info("생성된 상품QNA 글 번호 : " + qna.getQna_num());
	}
	
//	@Test
	public void testGetQnaList() {
		PagingVO pagingVO = new PagingVO();
		
		//8개씩 2페이지
		pagingVO.setPageNum(1);
		pagingVO.setAmount(6);

		service.getQnaList(pagingVO, 21l);
	}
}