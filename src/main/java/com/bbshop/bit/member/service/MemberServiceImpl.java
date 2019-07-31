package com.bbshop.bit.member.service;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.bbshop.bit.member.domain.MemberVO;
import com.bbshop.bit.member.domain.MoreDetailsVO;
import com.bbshop.bit.member.mapper.MemberMapper;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Inject
    PasswordEncoder passwordEncoder;
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void register(MemberVO vo) {
		// TODO Auto-generated method stub
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		 System.out.println("ServiceImpl register");
		 
		 if(vo.getPHONE().equals("kakao")) {
			vo.setMEMBER_PW("kakao"); 
		 }else {
	        String encPassword = passwordEncoder.encode(vo.getMEMBER_PW());
	        vo.setMEMBER_PW(encPassword);
	        //System.out.println("암호화된 비밀번호 : "+user.getUserPassword());
		System.out.println("비밀번호 암호화 성공"+vo.toString());
		 }
		sqlSession.getMapper(MemberMapper.class);
		mapper.insertMember(vo);
		System.out.println("insert 성공!!!");
	}
	
	public long getUser_key(MemberVO vo) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		sqlSession.getMapper(MemberMapper.class);
		System.out.println(vo.getMEMBER_ID());
		long user_key =mapper.getUser_key(vo);
		System.out.println("key 가져오기 성공!::::"+user_key);
		return user_key;
	}
	
	public void moreDetailsRegister(MoreDetailsVO md) {
		MemberMapper mapper= sqlSession.getMapper(MemberMapper.class);
		System.out.println("추가사항 회원가입");
		System.out.println(md.toString());
		sqlSession.getMapper(MemberMapper.class);
		mapper.moreDetailsRegister(md);
	}

	
	public String memberLogin(HashMap<String,String> map , String toPage) {
		// TODO Auto-generated method stub
		System.out.println("serviceimpl");
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		sqlSession.getMapper(MemberMapper.class);
		int result=mapper.memberLogin(map);
		System.out.println("result="+result);
		if(mapper.memberLogin(map)==1) {
			
			if(toPage.equals("goShop")) {
			
				return "shoppingMall/main/shopping_main";
		}
			else if(toPage.equals("goCommunity")){
			
			
				return "shoppingMall/main/community_main";
			}
		}
		else {
			return "index.do";
		}
		return "index.do";
	}
	
	public String memberPw(MemberVO member) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		sqlSession.getMapper(MemberMapper.class);
		String db_pw = mapper.memberPw(member);
		return db_pw;
		
	}

	public int getId(MemberVO vo) {		// TODO Auto-generated method stub
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		sqlSession.getMapper(MemberMapper.class);
		System.out.println("serviceImpl까지 들어오나?"+vo.getMEMBER_ID());
		int result=mapper.getId(vo);
		
		
		return result;
	}
	public int getNickname(MemberVO vo) {		// TODO Auto-generated method stub
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		sqlSession.getMapper(MemberMapper.class);
		System.out.println("serviceImpl까지 들어오나?"+vo.getNICKNAME());
		int result=mapper.getNickname(vo);
		
		
		return result;
	}

	@Override
	public MemberVO isExsist() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO getMemberInfo(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteMemberInfo(String id, String pw) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void modify(MemberVO member) {
		// TODO Auto-generated method stub

	}

}
