package com.bbshop.bit.domain;

import java.util.Date;

public class GoodsVO {
	
	private Long goods_num;		// 상품 번호
	private int category;		// 카테고리 (1:글러브, 2:배트, 3:유니폼, 4:야구화, 5:야구공)
	private String name;		// 상품명
	private Long stock;			// 재고 수 (의정 - default:100)
	private Long price;			// 가격
	private String brand;		// 브랜드 (10개)
	private String main_img;	// 메인 사진(goodsList)
	private String dtl_img1;	// 상세 사진1(goodsInfo - 대표)
	private String dtl_img2;	// 상세 사진2(goodsInfo - 상세설명 사진 긴거)
	private int best;			// 인기상품 (0:일반, 1:인기상품)
	private Long discount;		// 할인율
	private int soldout;		// 품절여부 (0:품절아님, 1:품절)
	private Long sales;			// 판매 수량
	private Date regdate;		// 등록일
	
	
	public Long getGoods_num() {
		return goods_num;
	}
	public void setGoods_num(Long goods_num) {
		this.goods_num = goods_num;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Long getStock() {
		return stock;
	}
	public void setStock(Long stock) {
		this.stock = stock;
	}
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getMain_img() {
		return main_img;
	}
	public void setMain_img(String main_img) {
		this.main_img = main_img;
	}
	public String getDtl_img1() {
		return dtl_img1;
	}
	public void setDtl_img1(String dtl_img1) {
		this.dtl_img1 = dtl_img1;
	}
	public String getDtl_img2() {
		return dtl_img2;
	}
	public void setDtl_img2(String dtl_img2) {
		this.dtl_img2 = dtl_img2;
	}
	public int getBest() {
		return best;
	}
	public void setBest(int best) {
		this.best = best;
	}
	public Long getDiscount() {
		return discount;
	}
	public void setDiscount(Long discount) {
		this.discount = discount;
	}
	public int getSoldout() {
		return soldout;
	}
	public void setSoldout(int soldout) {
		this.soldout = soldout;
	}
	public Long getSales() {
		return sales;
	}
	public void setSales(Long sales) {
		this.sales = sales;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
}
