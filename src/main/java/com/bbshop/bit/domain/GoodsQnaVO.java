package com.bbshop.bit.domain;

import java.util.Date;

public class GoodsQnaVO {

	private int qna_num;
	private String title;
	private String content;
	private String file;
	private Date regdate;
	private long goods_num;
	private long user_key;
	private int re_ref;		// 원글 참조 번호
	private int re_lev;		// 계층 (답글일 경우 1)
	private int re_seq;		// 글 번호??? 머더라?? 다시 물어보기
	
	public int getQna_num() {
		return qna_num;
	}
	public void setQna_num(int qna_num) {
		this.qna_num = qna_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
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
	public int getRe_ref() {
		return re_ref;
	}
	public void setRe_ref(int re_ref) {
		this.re_ref = re_ref;
	}
	public int getRe_lev() {
		return re_lev;
	}
	public void setRe_lev(int re_lev) {
		this.re_lev = re_lev;
	}
	public int getRe_seq() {
		return re_seq;
	}
	public void setRe_seq(int re_seq) {
		this.re_seq = re_seq;
	}
	
	@Override
	public String toString() {
		return "GoodsQnaVO [qna_num=" + qna_num + ", title=" + title + ", content=" + content + ", file=" + file
				+ ", regdate=" + regdate + ", goods_num=" + goods_num + ", user_key=" + user_key + ", re_ref=" + re_ref
				+ ", re_lev=" + re_lev + ", re_seq=" + re_seq + "]";
	}
	
}
