package com.project.myapp.test;

import java.io.UnsupportedEncodingException;

import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashMap;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;


public class TestApi {
	
	  public static void main(String[] args) throws Exception  {
		
		  
			 RestTemplate restTemplate = new RestTemplate();
			 HttpHeaders header = new HttpHeaders();
			 header.setContentType(new MediaType("application","json",Charset.forName("UTF-8")));
			 header.setAccept(Arrays.asList(new MediaType[] { MediaType.APPLICATION_JSON }));
			 header.set("data", "application/json");
			 header.set("Accept","application/json");
			 MultiValueMap<String, String> body = new LinkedMultiValueMap<String, String>();
			 body.add("apikey","2b2b83ebb07ddeb4974d23fccd956dba");
			 body.add("qestrnSeq", "6");
			 body.add("trgetSe", "100209");
			 body.add("gender", "100323");
			 body.add("startDtm", "1550466291034");
////			 StringBuilder ans = new StringBuilder();	 
////				ans.append("B1="+test.getAnswer1());
////				ans.append(" B2="+test.getAnswer2());
////				ans.append(" B3="+test.getAnswer3());
////				ans.append(" B4="+test.getAnswer4());
////				ans.append(" B5="+test.getAnswer5());
////				ans.append(" B6="+test.getAnswer6());
////				ans.append(" B7="+test.getAnswer7());
////				ans.append(" B8="+test.getAnswer8());
////				ans.append(" B9="+test.getAnswer9());
////				ans.append(" B10="+test.getAnswer10());
////				ans.append(" B11="+test.getAnswer11());
////				ans.append(" B12="+test.getAnswer12());
////				ans.append(" B13="+test.getAnswer13());
////				ans.append(" B14="+test.getAnswer14());
////				ans.append(" B15="+test.getAnswer15());
////				ans.append(" B16="+test.getAnswer16());
////				ans.append(" B17="+test.getAnswer17());
////				ans.append(" B18="+test.getAnswer18());
////				ans.append(" B19="+test.getAnswer19());
////				ans.append(" B20="+test.getAnswer20());
////				ans.append(" B21="+test.getAnswer21());
////				ans.append(" B22="+test.getAnswer22());
////				ans.append(" B23="+test.getAnswer23());
////				ans.append(" B24="+test.getAnswer24());
////				ans.append(" B25="+test.getAnswer25());
////				ans.append(" B26="+test.getAnswer26());
////				ans.append(" B27="+test.getAnswer27());
////				ans.append(" B28="+test.getAnswer28());	 
			 body.add("answers","B1=1 B2=3 B3=5 B4=7 B5=9 B6=11 B7=13 B8=15 B9=17 B10=19 B11=21 B12=23 B13=25 B14=27 B15=29 B16=31 B17=33 B18=35 B19=37 B20=39 B21=41 B22=43 B23=45 B24=47 B25=49 B26=51 B27=53 B28=55");
			 HttpEntity<MultiValueMap<String, String>>requestMessage = new HttpEntity<>(header,body);
			 
			 ResponseEntity<String> responseEntity =null; 
			 
			 responseEntity = restTemplate.postForEntity("http://www.career.go.kr/inspct/openapi/test/report", requestMessage, String.class);
					
			 System.out.println("status : " + responseEntity.getStatusCode());
			 System.out.println("body : " + responseEntity.getBody());


	    }
}
