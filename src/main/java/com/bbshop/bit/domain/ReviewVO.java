package com.bbshop.bit.domain;

import lombok.Data;

@Data
public class ReviewVO {

	private long rv_num;
	private String title;
	private String contents;
	private long score;
	private String re_img;
//	private long re_cnt;
	private String re_date;
	private long re_chk;
	private long goods_num;
	private long user_key;
//	private long re_hit; // 조회수 컬럼 추가(삭제 예정)
	private String nickname;	// 뷰에 출력하기 위한 닉네임 (테이블에는 없는 컬럼)(추가)
}
