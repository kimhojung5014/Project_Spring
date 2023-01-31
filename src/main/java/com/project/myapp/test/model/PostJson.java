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
			
		 StringBuilder ans = new StringBuilder();	 
			ans.append("B1="+testVo.getAnswer1());
			ans.append(" B2="+testVo.getAnswer2());
			ans.append(" B3="+testVo.getAnswer3());
			ans.append(" B4="+testVo.getAnswer4());
			ans.append(" B5="+testVo.getAnswer5());
			ans.append(" B6="+testVo.getAnswer6());
			ans.append(" B7="+testVo.getAnswer7());
			ans.append(" B8="+testVo.getAnswer8());
			ans.append(" B9="+testVo.getAnswer9());
			ans.append(" B10="+testVo.getAnswer10());
			ans.append(" B11="+testVo.getAnswer11());
			ans.append(" B12="+testVo.getAnswer12());
			ans.append(" B13="+testVo.getAnswer13());
			ans.append(" B14="+testVo.getAnswer14());
			ans.append(" B15="+testVo.getAnswer15());
			ans.append(" B16="+testVo.getAnswer16());
			ans.append(" B17="+testVo.getAnswer17());
			ans.append(" B18="+testVo.getAnswer18());
			ans.append(" B19="+testVo.getAnswer19());
			ans.append(" B20="+testVo.getAnswer20());
			ans.append(" B21="+testVo.getAnswer21());
			ans.append(" B22="+testVo.getAnswer22());
			ans.append(" B23="+testVo.getAnswer23());
			ans.append(" B24="+testVo.getAnswer24());
			ans.append(" B25="+testVo.getAnswer25());
			ans.append(" B26="+testVo.getAnswer26());
			ans.append(" B27="+testVo.getAnswer27());
			ans.append(" B28="+testVo.getAnswer28());	 
			
			String jsonInputString = "{\"apikey\":\"2b2b83ebb07ddeb4974d23fccd956dba\","
									+ "\"qestrnSeq\":\"6\",\"trgetSe\":\"100209\","
									+ "\"name\":\""+testVo.getName()+"\","
									+ "\"gender\":\""+testVo.getGender()+"\",\"startDtm\":\"1550466291034\","
									+ "\"answers\":\""+ans.toString()+"\"}";
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
			System.out.println(sb.toString());
			
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
