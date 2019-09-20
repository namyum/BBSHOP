package com.bbshop.bit.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReplyVO {
	
	private long reply_num;
	private String reply_content;
	private Date regdate;
	private long report_num;
	private long board_num;
	private long user_key;
	private Date moddate;
	private String writer;

}
