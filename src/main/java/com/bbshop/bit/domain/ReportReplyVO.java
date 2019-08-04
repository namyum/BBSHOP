package com.bbshop.bit.domain;

import lombok.Data;

@Data
public class ReportReplyVO {

	private Long REPORT_NUM;
	private String RE_CATEGORY;
	private Long BOARD_NUM;
	private Long REPLY_NUM;
	private String WRITER;
	private String URI;
	private int SEQ_REPORT;
}
