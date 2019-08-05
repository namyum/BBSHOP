package com.bbshop.bit.domain;

public class GoodsQnaVO {

	private long qna_num;	// 시퀀스값
	private String title;
	private String content;
	private String attached_file;
	private String regdate;
	private long goods_num;
	private long user_key;
	private long re_ref;		// 원글 참조 번호 (qna_num과 항상 같은 번호)
	private int re_lev;			// 답글 계층 (사용자:원글:0, 관리자:답글:1)
	private int re_seq;			// 답글 순서 (사용자:원글:0, 관리자:답글:1)
	
	
	public long getQna_num() {
		return qna_num;
	}
	public void setQna_num(long qna_num) {
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
	public String getAttached_file() {
		return attached_file;
	}
	public void setAttached_file(String attached_file) {
		this.attached_file = attached_file;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
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
	public long getRe_ref() {
		return re_ref;
	}
	public void setRe_ref(long re_ref) {
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
		return "GoodsQnaVO [qna_num=" + qna_num + ", title=" + title + ", content=" + content + ", attached_file="
				+ attached_file + ", regdate=" + regdate + ", goods_num=" + goods_num + ", user_key=" + user_key
				+ ", re_ref=" + re_ref + ", re_lev=" + re_lev + ", re_seq=" + re_seq + "]";
	}
	
}
