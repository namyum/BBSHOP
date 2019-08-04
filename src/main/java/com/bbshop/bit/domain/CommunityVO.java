package com.bbshop.bit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommunityVO {
	
	private Long BOARD_NUM;
	private String TEAM_NAME;
	private String TITLE;
	private String BOARD_CONTENT;
	private String UPLOADFILE;
	private String WRITER;	
	private Long HIT; 
	private Date REGDATE;
	private Date MODDATE;	
	private Long PREVIOUSPOST;	
	private Long NEXTPOST;
	private Long REPLY_COUNT;	 // 댓글 개수
	private String URI;	
	private Long REPORT_NUM;	
//	private String IP;	
	private Long USER_KEY;	
	private Long SEQ;	
	private Long LEV;	
	private Long DEP;	
	private int SEQ_BOARD;
	private int RN;
}
