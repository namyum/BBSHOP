package com.bbshop.bit.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReplyVO {
	
	private Long reply_num;
	private String reply_content;
	private Date regdate;
	private Date moddate;
	private Long report_num;
	private Long board_num;
	private Long user_key;
	private String writer;
	private int seq_reply;

}
