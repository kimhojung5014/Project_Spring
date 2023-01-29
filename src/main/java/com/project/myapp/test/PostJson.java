package com.project.myapp.test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.project.myapp.test.model.Test;


public class PostJson {
	
	public String api(Test test) throws Exception{
		
			URL url = new URL("http://www.career.go.kr/inspct/openapi/test/report/");
			
			HttpURLConnection con = (HttpURLConnection)url.openConnection();
			
			con.setRequestMethod("POST");
			
			con.setRequestProperty("Content-Type", "application/json");
			con.setRequestProperty("Accept", "application/json");
			
			con.setDoOutput(true);
			
		 StringBuilder ans = new StringBuilder();	 
			ans.append("B1="+test.getAnswer1());
			ans.append(" B2="+test.getAnswer2());
			ans.append(" B3="+test.getAnswer3());
			ans.append(" B4="+test.getAnswer4());
			ans.append(" B5="+test.getAnswer5());
			ans.append(" B6="+test.getAnswer6());
			ans.append(" B7="+test.getAnswer7());
			ans.append(" B8="+test.getAnswer8());
			ans.append(" B9="+test.getAnswer9());
			ans.append(" B10="+test.getAnswer10());
			ans.append(" B11="+test.getAnswer11());
			ans.append(" B12="+test.getAnswer12());
			ans.append(" B13="+test.getAnswer13());
			ans.append(" B14="+test.getAnswer14());
			ans.append(" B15="+test.getAnswer15());
			ans.append(" B16="+test.getAnswer16());
			ans.append(" B17="+test.getAnswer17());
			ans.append(" B18="+test.getAnswer18());
			ans.append(" B19="+test.getAnswer19());
			ans.append(" B20="+test.getAnswer20());
			ans.append(" B21="+test.getAnswer21());
			ans.append(" B22="+test.getAnswer22());
			ans.append(" B23="+test.getAnswer23());
			ans.append(" B24="+test.getAnswer24());
			ans.append(" B25="+test.getAnswer25());
			ans.append(" B26="+test.getAnswer26());
			ans.append(" B27="+test.getAnswer27());
			ans.append(" B28="+test.getAnswer28());	 
			
			String jsonInputString = "{\"apikey\":\"2b2b83ebb07ddeb4974d23fccd956dba\","
									+ "\"qestrnSeq\":\"6\",\"trgetSe\":\"100209\","
									+ "\"name\":\""+test.getName()+"\","
									+ "\"gender\":\""+test.getGender()+"\",\"startDtm\":\"1550466291034\","
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
			
	}
}
