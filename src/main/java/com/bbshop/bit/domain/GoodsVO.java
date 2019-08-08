package com.bbshop.bit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class GoodsVO {
	
	 private long GOODS_NUM;      // 상품 번호
	 private int CATEGORY;      // 카테고리 (1:글러브, 2:배트, 3:유니폼, 4:야구화, 5:야구공)
	 private String NAME;      // 상품명
	 private long PRICE;         // 가격
	 private String BRAND;      // 브랜드 (10개)
	 private String MAIN_IMG;   // 메인 사진(goodsList)
	 private String DTL_IMG1;   // 상세 사진1(goodsInfo - 대표)
	 private String DTL_IMG2;   // 상세 사진2(goodsInfo - 상세설명 사진 긴거)
	 private int BEST;         // 인기상품 (0:일반, 1:인기상품)
	 private long DISCOUNT;      // 할인율
	 private long SALES;         // 판매 수량
	 private Date REGDATE;      // 등록일
	 private String DETAIL;
	 
}