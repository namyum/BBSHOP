package com.bbshop.bit.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ReportReplyVO {

	private long REPORT_NUM;
	private String RE_CATEGORY;
	private long BOARD_NUM;
	private long REPLY_NUM;
	private String WRITER;
	private String URI;
	private Date REGDATE;
}

 