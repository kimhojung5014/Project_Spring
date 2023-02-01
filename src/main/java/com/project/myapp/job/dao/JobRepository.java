package com.project.myapp.job.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.project.myapp.job.model.JobDetailVo;
import com.project.myapp.job.model.JobListVo;
import com.project.myapp.page.model.Criteria;

@Repository
public class JobRepository implements IJobRepository{
	
	@Autowired
	JdbcTemplate jdbc;
	
	private class JobDetailMapper implements RowMapper<JobDetailVo>{
		
		@Override
		public JobDetailVo mapRow(ResultSet rs, int rowNum) throws SQLException {
			JobDetailVo jobDetailVo = new JobDetailVo(  rs.getString("job"),
														rs.getString("summary"),
														rs.getString("similarJob") ,
														rs.getString("empway") ,
														rs.getString("employment") ,
														rs.getString("salery") ,
														rs.getString("preparation") ,
														rs.getString("training") ,
														rs.getString("certification") ,
														rs.getString("capacity") ,
														rs.getString("ability") ,
														rs.getString("possibility") ,
														rs.getString("aptitude") ,
														rs.getString("reward") ,
														rs.getString("rewardValue") ,
														rs.getString("EMPLOYMENTSECURITY") ,
														rs.getString("EMPLOYMENTSECURITYVALUE") ,
														rs.getString("developmentPossibility") ,
														rs.getString("developmentPossibilityValue") ,
														rs.getString("workingConditions") ,
														rs.getString("workingConditionsValue") ,
														rs.getString("professional") ,
														rs.getString("professionalValue") , 
														rs.getString("equalEmployment") , 
														rs.getString("equalEmploymentValue"), 
														rs.getString("major"));
														return jobDetailVo;
		}
	}

	@Override
	public List<JobListVo> JobList(Criteria cri) {
		StringBuilder sql = new StringBuilder();
					 sql.append("select job,jobdicseg,profrssion," + 
								 "similarJob ," + 
								 "summary ," + 
								 "equalemployment ," + 
								 "possibility ," + 
								 "prospect ," + 
								 "salery ," + 
								 "job_Code ," + 
								 "job_Ctg_Code ," + 
								 "Aptd_Type_Code " + 
								 "from (select " + 
								 	   "rownum rn, " + 
								 	   "job, jobdicseg, profrssion ," + 
								 	   "similarJob ," + 
								 	   "summary ," + 
								 	   "equalemployment ," + 
								 	   "possibility ," + 
								 	   "prospect ," + 
								 	   "salery ," + 
								 	   "job_Code ," + 
								 	   "job_Ctg_Code ," + 
								 	   "Aptd_Type_Code " + 
								 	   "from joblist ");
					 if (cri.getSearch() != null) {
						sql.append(" where job like '%"+cri.getSearch()+"%') ");
					}else {
						sql.append(")");
					}
					 sql.append("where rn BETWEEN ? and ?");
		return jdbc.query(sql.toString(),
				 new RowMapper<JobListVo>() {
					@Override
					public JobListVo mapRow(ResultSet rs, int rowNum) throws SQLException {
						  StringTokenizer summary = new StringTokenizer(rs.getString("summary"), "-");
						  JobListVo jobListVo = new JobListVo();
						  jobListVo.setJob(rs.getString("job")); 
						  jobListVo.setJobicseg(rs.getString("jobdicseg"));
						  jobListVo.setProfrssion(rs.getString("profrssion"));
						  jobListVo.setSimiarJob(rs.getString("similarJob"));
						  jobListVo.setSummary(summary.nextToken());
						  jobListVo.setEqualemployment(rs.getString("equalemployment"));
						  jobListVo.setPossibility(rs.getString("possibility"));
						  jobListVo.setProspect(rs.getString("prospect"));
						  jobListVo.setSalery(rs.getString("salery"));
						  jobListVo.setJob_Code(rs.getString("job_Code"));
						  jobListVo.setJob_Ctg_Code(rs.getString("job_Ctg_Code"));
						  jobListVo.setAptd_Type_Code(rs.getString("Aptd_Type_Code"));
						  return jobListVo;
					}
				},
				 ((cri.getPageNum()-1) * cri.getAmount())+1,// page가 1일 경우 (1-1) * 10 = 0이고 + 1 하면 1 항상 1,11,21같이 시작해야 해서 +1
				 cri.getPageNum() * cri.getAmount()); //페이지 * 10 해주면 된다.
		
	}

	@Override
	public List<JobDetailVo> jobRecommendList(Criteria cri) {
		
		StringBuilder sql = new StringBuilder();
		
		
		sql.append( "select jd2.* "+
				    "from (select rownum rn,jd1.* "+ 
						  "FROM(SELECT *  " +
						  	   "FROM JOBDETAIL "+ 
						  	   "WHERE "+cri.getPriority()+" IS NOT NULL ");
		
		if (!cri.getability().equals("All")) {
			sql.append("AND ability LIKE '%"+cri.getability()+"%' ");
		}
		
		sql.append("and JOB in (SELECT JOB FROM JOBLIST ");
		
		if (!cri.getProfrssion().equals("All")) {
			sql.append("WHERE profrssion LIKE '"+cri.getProfrssion()+"') ");
		}else {
			sql.append(") ");
		}
		
		sql.append("ORDER BY to_Number("+cri.getPriority()+") DESC)jd1 )jd2 ");
		sql.append("where  rn BETWEEN ? and ?");
		System.out.println(sql.toString());
		
		return jdbc.query(sql.toString(), new JobDetailMapper(),
				((cri.getPageNum()-1) * cri.getAmount())+1,// page가 1일 경우 
				 cri.getPageNum() * cri.getAmount() //페이지 * 10 해주면 된다.
				);
	}
	@Override
	public int JobRecommendTotal(Criteria cri) {
		
		StringBuilder sql = new StringBuilder();
		
		sql.append("SELECT count(*) FROM JOBDETAIL WHERE "+cri.getPriority()+" IS NOT NULL ");
		
		if (!cri.getability().equals("All")) {
			sql.append("AND ability LIKE '%"+cri.getability()+"%' ");
		}
		
		sql.append("and JOB in (SELECT JOB FROM JOBLIST ");
		
		if (!cri.getProfrssion().equals("All")) {
			sql.append("WHERE profrssion LIKE '"+cri.getProfrssion()+"') ");
		}else {
			sql.append(") ");
		}
		
//		sql.append("ORDER BY to_Number("+cri.getPriority()+") DESC ");

		
		return jdbc.queryForObject(sql.toString(), Integer.class);
	}
	

	@Override
	public JobDetailVo Jobdetail(String job) {
		
		String sql = "SELECT * FROM jobdetail WHERE job = ?";
		
		return jdbc.queryForObject(sql, new JobDetailMapper(),job);
	}
	
	@Override
	public int JobTotal(Criteria cri) {
		
		StringBuilder sql = new StringBuilder("SELECT count(*) from joblist ");
		
		if (cri.getSearch() != null) {
			sql.append("where job LIKE '%"+cri.getSearch()+"%' ");
		}
		
		return jdbc.queryForObject(sql.toString(), Integer.class);
	}
	
	
}
