package com.bbshop.bit.domain;

import java.util.Date;

public class ReviewVO {

	private long rv_num;
	private String title;
	private String contents;
	private long hrscp;
	private String re_img;
	private long re_cnt;
	private String re_date;
	private long re_chk;
	private long goods_num;
	private long user_key;
	private long re_hit; // 조회수 컬럼 추가
	
	public long getRe_hit() {
		return re_hit;
	}
	public void setRe_hit(long re_hit) {
		this.re_hit = re_hit;
	}
	public long getRv_num() {
		return rv_num;
	}
	public void setRv_num(long rv_num) {
		this.rv_num = rv_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public long getHrscp() {
		return hrscp;
	}
	public void setHrscp(long hrscp) {
		this.hrscp = hrscp;
	}
	public String getRe_img() {
		return re_img;
	}
	public void setRe_img(String re_img) {
		this.re_img = re_img;
	}
	public long getRe_cnt() {
		return re_cnt;
	}
	public void setRe_cnt(long re_cnt) {
		this.re_cnt = re_cnt;
	}
	public String getRe_date() {
		return re_date;
	}
	public void setRe_date(String re_date) {
		this.re_date = re_date;
	}
	public long getRe_chk() {
		return re_chk;
	}
	public void setRe_chk(long re_chk) {
		this.re_chk = re_chk;
	}
	public long getGoods_num() {
		return goods_num;
	}
	public void setGoods_num(long goods_num) {
		this.goods_num = goods_num;
	}
	public long getUser_key() {
		return user_key;
	}
	public void setUser_key(long user_key) {
		this.user_key = user_key;
	}
	
	@Override
	public String toString() {
		return "ReviewVO [rv_num=" + rv_num + ", title=" + title + ", contents=" + contents + ", hrscp=" + hrscp
				+ ", re_img=" + re_img + ", re_cnt=" + re_cnt + ", re_date=" + re_date + ", re_chk=" + re_chk
				+ ", good_num=" + goods_num + ", user_key=" + user_key + ", re_hit=" + re_hit + "]";
	}
}
