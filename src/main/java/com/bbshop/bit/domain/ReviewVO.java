package com.bbshop.bit.domain;

import lombok.Data;

@Data
public class ReviewVO {

	private long rv_num;		// 후기_번호
	private String title;		// 후기_제목
	private String contents;	// 후기_내용
	private long score;			// 후기_별점
	private String re_img;		// 후기_첨부파일
//	private long re_cnt;		// 후기_댓글개수 (삭제가능성 높음)
	private String re_date;		// 후기_날짜
	private long re_chk;		// 후기_관리자 체크
	private long goods_num;		// 상품 번호
	private long user_key;		// 회원 식별자
//	private long re_hit; 		// 조회수 컬럼 추가 (삭제가능성 높음)
	
	private String nickname;	// 뷰에 출력하기 위한 닉네임 (테이블에는 없는 컬럼)(추가)
}
