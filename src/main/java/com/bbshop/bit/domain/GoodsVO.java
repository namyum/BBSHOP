package com.bbshop.bit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class GoodsVO {
	
	private long goods_num;	
	private int category;		
	private String name;			
	private long price;		
	private String brand;		
	private String main_img;
	private String dtl_img1;	
	private String dtl_img2;	
	private int best;			
	private long discount;
	private long sales;		
	private Date regdate;		
	
}