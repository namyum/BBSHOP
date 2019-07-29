package com.bbshop.bit.cart.domain;

import lombok.Data;
import oracle.sql.DATE;
@Data
public class GoodsVO {

	private long GOODS_NUM;
	private int CATEGORY;
	private String NAME;
	private int STOCK;
	private String DETAIL;
	private String BRAND;
	private String MAIN_IMG;
	private String DTL_IMG1;
	private String DTL_IMG2;
	private int BEST;
	private int DISCOUNT;
	private int SOLDOUT;
	private int SALES;
	private DATE REGDATE;
	
	}
