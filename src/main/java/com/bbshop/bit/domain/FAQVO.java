package com.bbshop.bit.domain;


import java.sql.Date;

import lombok.Data;

@Data
public class FAQVO {
	
	private long FAQ_NUM;
	private String FAQ_CATEGORY;
	private String SUBJECT;
	private String CONTENT;
	private Date REGDATE;
}
