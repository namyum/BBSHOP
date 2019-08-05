package com.bbshop.bit.domain;

import lombok.Data;

@Data
public class GoodsQnaVO {

	private long qna_num;
	private String subject;
	private String contents;
	private String add_file;
	private String regdate;
	private long hit;
	private long goods_num;
	private long user_key;
	private long re_ref;
	private long re_lev;
	private long re_seq;
}
