package com.bbshop.bit.member.mapper;

import java.util.HashMap;

import com.bbshop.bit.member.domain.MemberVO;
import com.bbshop.bit.member.domain.MoreDetailsVO;

public interface MemberMapper {
	
	//1.회원가입
	public void insertMember(MemberVO member);
	public int memberLogin(HashMap<String, String> map);
	public String memberPw(MemberVO member);
	public void GetKey(String user_id, String key);
	public void moreDetailsRegister(MoreDetailsVO md);
	public long getUser_key(MemberVO vo);	
	public int getId(MemberVO vo);
	public int getNickname(MemberVO vo);
}
