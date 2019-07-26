package com.bbshop.bit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {
	
	private Long REPLY_NUM;
	private String REPLY_CONTENT;
	private Date REGDATE;
	private Date MODDATE;
	private Long REPORT_NUM;
	private Long BOARD_NUM;
	private Long USER_KEY;
	private String WRITER;

}
