package com.bbshop.bit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	
	private int user_key;
    private String member_id;
    private String nickname;
    private String member_pw;
    private String name;
    private int birth;
    private int phone;
    private String grade;
    private int savings;
    private int caution;
    private Date regdate;
    private Date moddate;
    private int flag;

}
