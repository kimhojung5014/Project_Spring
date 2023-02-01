package com.project.myapp.test.model;

import java.io.BufferedReader;

import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Component;

@Component
public class PostJson {
	
	public String postJson(TestVo testVo) {
			try {
			
			URL url = new URL("http://www.career.go.kr/inspct/openapi/test/report/");
			
			HttpURLConnection con = (HttpURLConnection)url.openConnection();
			
			con.setRequestMethod("POST");
			
			con.setRequestProperty("Content-Type", "application/json");
			con.setRequestProperty("Accept", "application/json");
			con.setDoOutput(true);
			
			String jsonInputString = "{\"apikey\":\"2b2b83ebb07ddeb4974d23fccd956dba\","
									+ "\"qestrnSeq\":\"6\",\"trgetSe\":\"100209\","
									+ "\"name\":\""+testVo.getName()+"\","
									+ "\"gender\":\""+testVo.getGender()+"\",\"startDtm\":\"1550466291034\","
									+ "\"answers\":\""+testVo.getAnsAll()+"\"}";
//			+ "\"answers\":\"B1=1 B2=3 B3=5 B4=7 B5=9 B6=11 B7=13 B8=15 B9=17 B10=19 B11=21 B12=23 B13=25 B14=27 B15=29 B16=31 B17=33 B18=35 B19=37 B20=39 B21=41 B22=43 B23=45 B24=47 B25=49 B26=51 B27=53 B28=55\"}";
			System.out.println(con.toString());
			System.out.println(jsonInputString);
			
			try(OutputStream os = con.getOutputStream()) {
			    byte[] input = jsonInputString.getBytes("utf-8");
			    os.write(input, 0, input.length);			
			}
			BufferedReader br;
			StringBuilder sb = new StringBuilder();
			br = new BufferedReader(new InputStreamReader(con.getInputStream(),"UTF-8"));
			String line;
			while ((line = br.readLine()) != null) {
				sb.append(line);
			}
			JSONParser jp = new JSONParser();
			JSONObject jo = (JSONObject)jp.parse(sb.toString());
			JSONObject RESULT = (JSONObject)jo.get("RESULT");
			String add = (String)RESULT.get("url");
			System.out.println(add);
			return add;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
	}
}
