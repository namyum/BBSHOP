package com.bbshop.bit.service;

import java.net.URI;
import java.net.URISyntaxException;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.bbshop.bit.domain.KakaoPayApprovalVO;
import com.bbshop.bit.domain.KakaoPayReadyVO;
 
@Service
public class KakaoPay {
 
    private static final String HOST = "https://kapi.kakao.com";
    
    private KakaoPayReadyVO kakaoPayReadyVO;
    private KakaoPayApprovalVO kakaoPayApprovalVO;
    
    public String kakaoPayReady() {
 
        RestTemplate restTemplate = new RestTemplate();
 
        // 서버로 요청할 Header
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "KakaoAK " + "96884f23357d9a04632a910b16517de5");
        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
        
        // 서버로 요청할 Body
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME"); // 테스트용 cid
        params.add("partner_order_id", "1004");
        params.add("partner_user_id", "bbshop");
        params.add("item_name", "지수 말티즈 캔디글러브");
        params.add("quantity", "1");
        params.add("total_amount", "150000");
        params.add("tax_free_amount", "100");
        params.add("approval_url", "http://localhost:8080/kakaoPaySuccess.do");
        params.add("cancel_url", "http://localhost:8080/kakaoPayCancel");
        params.add("fail_url", "http://localhost:8080/kakaoPaySuccessFail");
 
        // 헤더와 바디 붙이기
         HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
 
         // RestTemplate을 이용해 카카오페이에 데이터를 보냄
         // post방식으로 HOST + "/v1/payment/ready"에 body(header+body)정보를 보낸 후 요청이 성공적으로 이루어지면 카카오페이에서 응답정보를 보내줌
        try {
            kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoPayReadyVO.class);
            
            // 결제가 완료되면 해당 주소로 가게 설정
            return kakaoPayReadyVO.getNext_redirect_pc_url();
 
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return "/pay.do";
        
    }
    
    public KakaoPayApprovalVO kakaoPayInfo(String pg_token) {
    	 
        System.out.println("KakaoPayInfoVO............................................");
        System.out.println("-----------------------------");
        
        RestTemplate restTemplate = new RestTemplate();
 
        // 서버로 요청할 Header
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "KakaoAK " + "96884f23357d9a04632a910b16517de5");
        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
 
        // 서버로 요청할 Body
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME");
        params.add("tid", kakaoPayReadyVO.getTid());
        params.add("partner_order_id", "1004");
        params.add("partner_user_id", "bbshop");
        params.add("pg_token", pg_token);
        params.add("total_amount", "150000");
        
        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
        
        try {
            kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoPayApprovalVO.class);
            System.out.println("" + kakaoPayApprovalVO);
          
            return kakaoPayApprovalVO;
        
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return null;
    }
    
}
