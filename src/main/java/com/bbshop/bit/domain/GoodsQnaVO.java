package com.bbshop.bit.domain;

import lombok.Data;

@Data
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
	
}
