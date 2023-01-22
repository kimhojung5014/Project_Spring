package com.project.myapp.job.model;

public class JobListVo {
	
	private String  job , 			//	JOBLIST.JOB IS '직업';
					jobdicseg,//	JOBLIST.JOBDICSEG IS '직업코드';
					profrssion ,    //  JOBLIST.profession IS '직업분야';
					similarJob ,     //	JOBLIST.similarJob IS '유사직업';
					summary ,       //	JOBLIST.summary IS '직업설명';
					equalemployment ,//	JOBLIST.equalemployment IS '고용평등';
					possibility ,   //	JOBLIST.possibility IS '발전가능성';
					prospect ,      //	JOBLIST.prospect IS '일자리전망';
					salery,         //	JOBLIST.salery IS '연봉';
					job_Code ,       //	JOBLIST.job_cod IS '직업코드';
					job_Ctg_Code ,  //	JOBLIST.job_ctg_code IS '직업분류코드';
					Aptd_Type_Code; //	JOBLIST.aptd_type_code IS '적성유형별코드';

	public JobListVo(String job,
						 String jobdicseg,
						 String profrssion,
						 String simiarJob,
						 String summary,
						 String equalemployment,
						 String possibility,
						 String prospect,
						 String salery,
						 String job_Code,
						 String job_Ctg_Code,
						 String Aptd_Type_Code) {
		
		this.job = job;
		this.jobdicseg = jobdicseg;
		this.profrssion = profrssion;
		this.similarJob = simiarJob;
		this.summary = summary;
		this.equalemployment = equalemployment;
		this.possibility = possibility;
		this.prospect = prospect;
		this.salery = salery;
		this.job_Code = job_Code;
		this.job_Ctg_Code = job_Ctg_Code;
		this.Aptd_Type_Code = Aptd_Type_Code;
	}
	
	public JobListVo() {
		
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getJobdicseg() {
		return jobdicseg;
	}

	public void setJobicseg(String jobdicseg) {
		this.jobdicseg = jobdicseg;
	}

	public String getProfrssion() {
		return profrssion;
	}

	public void setProfrssion(String profrssion) {
		this.profrssion = profrssion;
	}

	public String getSimilarJob() {
		return similarJob ;
	}

	public void setSimiarJob(String simiarJob) {
		this.similarJob  = simiarJob;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getEqualemployment() {
		return equalemployment;
	}

	public void setEqualemployment(String equalemployment) {
		this.equalemployment = equalemployment;
	}

	public String getPossibility() {
		return possibility;
	}

	public void setPossibility(String possibility) {
		this.possibility = possibility;
	}

	public String getProspect() {
		return prospect;
	}

	public void setProspect(String prospect) {
		this.prospect = prospect;
	}

	public String getSalery() {
		return salery;
	}

	public void setSalery(String salery) {
		this.salery = salery;
	}

	public String getJob_Code() {
		return job_Code;
	}

	public void setJob_Code(String job_Cod) {
		this.job_Code = job_Cod;
	}

	public String getJob_Ctg_Code() {
		return job_Ctg_Code;
	}

	public void setJob_Ctg_Code(String job_Ctg_Code) {
		this.job_Ctg_Code = job_Ctg_Code;
	}

	public String getAptd_Type_Code() {
		return Aptd_Type_Code;
	}

	public void setAptd_Type_Code(String aptd_Type_Code) {
		Aptd_Type_Code = aptd_Type_Code;
	}


}
