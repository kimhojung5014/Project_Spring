package com.project.myapp.major.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.project.myapp.major.model.MajorTest;
import com.project.myapp.major.model.MajorVo;
import com.project.myapp.page.model.Criteria;

@Repository
public class MajorRepository implements IMajorRepository{
	
	@Autowired
	JdbcTemplate jdbc;
	
	private class MajorMapper implements RowMapper<MajorVo>{
		@Override
		public MajorVo mapRow(ResultSet rs, int rowNum) throws SQLException {
			MajorVo majorVo = new MajorVo(rs.getString("lClass"),
										 rs.getString("majorSeq"),
										 rs.getString("uni"),
										 rs.getString("major"),
										 rs.getString("salary"),
										 rs.getString("employment"),
										 rs.getString("department"),
										 rs.getString("summary"),
										 rs.getString("subject_description"),
										 rs.getString("subject_name"),
										 rs.getString("act_name"),
										 rs.getString("act_description"),
										 rs.getString("job"),
										 rs.getString("qualifications"),
										 rs.getString("interest"),
										 rs.getString("property"),
										 rs.getString("gradeuate"),
										 rs.getString("description"),
										 rs.getString("SBJECT_NM"),
										 rs.getString("SBJECT_SUMRY"),
										 rs.getString("area"),
										 rs.getString("schoolURL"),
										 rs.getString("campus_nm"),
										 rs.getString("majorName"),
										 rs.getString("schoolName"),
										 rs.getString("fieldItem"),
										 rs.getString("fieldData"),
										 rs.getString("afterItem"),
										 rs.getString("afterData"),
										 rs.getString("salaryItem"),
										 rs.getString("salaryData"),
										 rs.getString("satisfactionItem"),
										 rs.getString("satisfactionData"),
										 rs.getString("employmentItem"),
										 rs.getString("employmentData"),
										 rs.getString("applicantItem"),
										 rs.getString("applicantData"));
					return majorVo;
		}
	}

	@Override
	public List<MajorVo> majorList(Criteria cri) {

		StringBuilder sql = new StringBuilder();
		
		sql.append("select * "+
				   "from (select rownum rn, major,salary,employment,summary,lclass,uni,DEPARTMENT " + 
				         "from majordetail ");
		
		if (cri.getSearch() != null) {
			sql.append(" WHERE major like '%"+cri.getSearch()+"%' )");
		}else {
			sql.append(")");
		}
		sql.append("where rn BETWEEN ? and ?");
		return jdbc.query(sql.toString(), 
				new RowMapper<MajorVo>() {
					@Override
					public MajorVo mapRow(ResultSet rs, int rowNum) throws SQLException {
						MajorVo majorVo = new MajorVo();
						majorVo.setDepartment(rs.getString("DEPARTMENT"));
						majorVo.setlClass(rs.getString("lclass"));
						majorVo.setUni(rs.getString("uni"));
						majorVo.setMajor(rs.getString("major"));
						majorVo.setSalary(rs.getString("salary"));
						majorVo.setEmployment(rs.getString("employment"));
						majorVo.setSummary(rs.getString("summary"));
						return majorVo;
					}
		},
				((cri.getPageNum()-1) * cri.getAmount())+1,// page가 1일 경우 (1-1) * 10 = 0이고 + 1 하면 1 항상 1,11,21같이 시작해야 해서 +1
				 cri.getPageNum() * cri.getAmount()
				);
	}

	@Override
	public MajorVo majorDetail(String major) {

		String sql = "SELECT * FROM MAJORDETAIL WHERE major = ?";
		
		
		return jdbc.queryForObject(sql, new MajorMapper(), major);
		
	}
	
	
	@Override
	public int majorTotal(Criteria cri) {
		
		StringBuilder sql = new StringBuilder();
		
		sql.append("select count(*) "+
				   "from (select major " + 
				         "from majordetail ");
		
		if (cri.getSearch() != null) {
			sql.append(" WHERE major like '%"+cri.getSearch()+"%' )");
		}else {
			sql.append(")");
		}
		return jdbc.queryForObject(sql.toString(), Integer.class);
	}
	
	@Override
	public List<MajorVo> majorRecommend(MajorTest majorTest) {
	
		StringBuilder sql = new StringBuilder();
		
		if (majorTest.getPriority().equals("SATISFACTIONDATA")) {
			sql.append("select * "+
					   "from(select ROW_NUMBER() OVER (ORDER BY REGEXP_SUBSTR ("+majorTest.getPriority()+",'[^@]+', 1, 5) desc," +
					   	    "REGEXP_SUBSTR ("+majorTest.getPriority()+", '[^@]+', 1, 4) desc)as rn,"+
		   	    		   "REGEXP_SUBSTR ("+majorTest.getPriority()+", '[^@]+', 1, 5)priority , m.* "+
						    "from majordetail m ");
		}
		else {
			sql.append("select * "+
					   "from(select ROW_NUMBER() OVER (ORDER BY REGEXP_SUBSTR ("+majorTest.getPriority()+",'[^@]+', 1, 1) desc)as rn," +
					   		"REGEXP_SUBSTR ("+majorTest.getPriority()+",'[^@]+', 1, 1)priority ,m.* "+
						    "from majordetail m ");
		}
		//전공계열이 전체가 아니라면
		if (!majorTest.getLclass().equals("all")) {
			 sql.append("where lclass like '"+majorTest.getLclass()+"' ");
		}
		if (!majorTest.getLclass().equals("all") && !majorTest.getUni().equals("all")) {
			sql.append("and uni like '"+majorTest.getUni()+"' ");
		}
		else if (majorTest.getLclass().equals("all") && !majorTest.getUni().equals("all")) {
			sql.append("where uni like '"+majorTest.getUni()+"' ");
		}
		if ((!majorTest.getLclass().equals("all") || !majorTest.getUni().equals("all")) && 
				(majorTest.getMoney().equals("경제적으로 힘든 상황") || majorTest.getTime().equals("온라인만 가능"))) {
			sql.append("and (m.schoolname like '%한국방송통신%' or m.schoolname like '%사이버%')");
		}else if ((majorTest.getLclass().equals("all") && majorTest.getUni().equals("all")) &&
				(majorTest.getMoney().equals("경제적으로 힘든 상황") || majorTest.getTime().equals("온라인만 가능"))) {
			sql.append("where m.schoolname like '%한국방송통신%' or m.schoolname like '%사이버%'");
		}
		sql.append(") ");
		sql.append("where rn BETWEEN 1 and 10");
		return jdbc.query(sql.toString(), new MajorMapper());
	}
	
//	new	RowMapper<MajorVo>(){
//		@Override
//		public MajorVo mapRow(ResultSet rs, int rowNum) throws SQLException {
//			MajorVo majorVo = new MajorVo(rs.getString("lClass"),
//										 rs.getString("majorSeq"),
//										 rs.getString("uni"),
//										 rs.getString("major"),
//										 rs.getString("salary"),
//										 rs.getString("employment"),
//										 rs.getString("department"),
//										 rs.getString("summary"),
//										 rs.getString("subject_description"),
//										 rs.getString("subject_name"),
//										 rs.getString("act_name"),
//										 rs.getString("act_description"),
//										 rs.getString("job"),
//										 rs.getString("qualifications"),
//										 rs.getString("interest"),
//										 rs.getString("property"),
//										 rs.getString("gradeuate"),
//										 rs.getString("description"),
//										 rs.getString("SBJECT_NM"),
//										 rs.getString("SBJECT_SUMRY"),
//										 rs.getString("area"),
//										 rs.getString("schoolURL"),
//										 rs.getString("campus_nm"),
//										 rs.getString("majorName"),
//										 rs.getString("schoolName"),
//										 rs.getString("fieldItem"),
//										 rs.getString("fieldData"),
//										 rs.getString("afterItem"),
//										 rs.getString("afterData"),
//										 rs.getString("salaryItem"),
//										 rs.getString("salaryData"),
//										 rs.getString("satisfactionItem"),
//										 rs.getString("satisfactionData"),
//										 rs.getString("employmentItem"),
//										 rs.getString("employmentData"),
//										 rs.getString("applicantItem"),
//										 rs.getString("applicantData"),
//										 rs.getString("priority"));
//					return majorVo;
//		}
//	}
			
	@Override
	public int majorReTotal(MajorTest majorTest, Criteria cri) {
		StringBuilder sql = new StringBuilder();
		if (majorTest.getPriority().equals("SATISFACTIONDATA")) {
			sql.append("select count(*) "+
					   "from(select ROW_NUMBER() OVER (ORDER BY REGEXP_SUBSTR ("+majorTest.getPriority()+", '[^@]+', 1, 5) desc)as rn, m.* "+
						    "from majordetail m ");
		}
		else {
			sql.append("select count(*) "+
					   "from(select ROW_NUMBER() OVER (ORDER BY REGEXP_SUBSTR ("+majorTest.getPriority()+", '[^@]+', 1, 1) desc)as rn, m.* "+
						    "from majordetail m ");
		}

		//전공계열이 전체가 아니라면
		if (!majorTest.getLclass().equals("all")) {
			 sql.append("where lclass like '"+majorTest.getLclass()+"' ");
		}
		if (!majorTest.getLclass().equals("all") && !majorTest.getUni().equals("all")) {
			sql.append("and uni like '"+majorTest.getUni()+"' ");
		}
		else if (majorTest.getLclass().equals("all") && !majorTest.getUni().equals("all")) {
			sql.append("where uni like '"+majorTest.getUni()+"' ");
		}
		if ((!majorTest.getLclass().equals("all") || !majorTest.getUni().equals("all")) && (majorTest.getMoney().equals("경제적으로 힘든 상황") || majorTest.getTime().equals("온라인만 가능"))) {
			sql.append("and (m.schoolname like '%한국방송통신%' or m.schoolname like '%사이버%')");
		}else if ((majorTest.getLclass().equals("all") && majorTest.getUni().equals("all")) && (majorTest.getMoney().equals("경제적으로 힘든 상황") || majorTest.getTime().equals("온라인만 가능"))) {
			sql.append("where m.schoolname like '%한국방송통신%' or m.schoolname like '%사이버%'");
		}
			sql.append(") ");
		
		return jdbc.queryForObject(sql.toString(), Integer.class);
	}
	
	
}
