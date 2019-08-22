package com.bbshop.bit.service;

import java.util.Random;

import javax.mail.Address;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.bbshop.bit.mapper.MemberMapper;

@Service
public class UserMailSendService {
	// ������ �̿��� Ű ����
		private boolean lowerCheck;
		private int size;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//�̸��Ͽ� �־��� ����Ű ������ ����� �޼ҵ�
	
	private String init() {
		Random rand = new Random();
		StringBuffer sb = new StringBuffer();
		int num = 0;
		
		do {
			num=rand.nextInt(75)+48;
			if((num>=48 && num<=57)|| (num >=65&& num <= 90)||(num>=97 && num <=122)) {
				sb.append((char) num);
			}
			else {
				continue;
			}
		
		}
		 while (sb.length() < size);
		if (lowerCheck) {
			return sb.toString().toLowerCase();
		}
		return sb.toString();
	}

	

	public String getKey(boolean lowerCheck, int size) {
		this.lowerCheck = lowerCheck;
		this.size = size;
		return init();
	}

	// 회원가입 발송 이메일(인증키 발송)
    public String mailSendWithUserKey(String e_mail, String user_id, HttpServletRequest request) {

        String key = getKey(false, 20);
        //MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
        //mapper.GetKey(user_id, key); 
        MimeMessage mail = mailSender.createMimeMessage();
        String htmlStr = "<h2>안녕하세요  :) BBSHOP 입니다!</h2><br><br>" 
                + "<h3>" + user_id + "님</h3>" + "<p>인증키 : "+ key+"입니다"
                + "<a href='http://localhost:8080/" + request.getContextPath() + "/user/key_alter?user_id="+ user_id +"&user_key="+key+"'>인증하기</a></p>"
                + "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";
        try {
            mail.setSubject("[본인인증] BBSHOP의 인증메일입니다", "utf-8");
            mail.setText(htmlStr, "utf-8", "html");
            mail.addRecipient(RecipientType.TO, new InternetAddress(e_mail));

            mail.setFrom(new InternetAddress("dntjr0517@gmail.com"));

            mailSender.send(mail);
        } catch (MessagingException e) {
            e.printStackTrace();
        }

        return key;
    }

}
