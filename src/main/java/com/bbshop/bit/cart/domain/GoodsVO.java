package com.bbshop.bit.cart.domain;

import lombok.Data;
import oracle.sql.DATE;
@Data
public class GoodsVO {

	private long GOODS_NUM;
	private int CATEGORY;
	private String NAME;
	private int STOCK;
	private String BRAND;
	private String MAIN_IMG;
	private int DISCOUNT;
	private int SALES;
	}
