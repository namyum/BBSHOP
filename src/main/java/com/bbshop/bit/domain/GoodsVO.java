package com.bbshop.bit.domain;


import java.sql.Date;

import lombok.Data;

@Data
public class GoodsVO {
	private long GOODS_NUM;
	private int CATEGORY;
	private int PRICE;
	private String NAME;
	private String BRAND;
	private String MAIN_IMG;
	private String DTL_IMG1;
	private String DTL_IMG2;
	private int DISCOUNT;
	private int SALES;
	private String DETAIL;
	private int BEST;
	private Date REGDATE;
	

}
