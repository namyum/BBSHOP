package com.bbshop.bit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OnetoOneVO {
	
	private long ONE_ONE_NUM;
	private String ONE_CATEGORY;
	private String ONE_TITLE;
	private String ONE_CONTENTS;
	private String ONE_FILE;
	private Date REGDATE;
	private long USER_KEY;
	private long SEQ;
	private long LEV;
	private long DEP;
}
