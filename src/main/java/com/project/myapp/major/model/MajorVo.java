package com.project.myapp.major.model;


public class MajorVo {
	
	private  String lClass,
					majorSeq, //-- 잡 id
					uni, //-- 대학 4년제, 전문제인지
					major , //-- 과이름
					salary,// -- 취업 후 임금
					employment, //-- 취업률
					department , //-- 비슷한 과
					summary ,// -- 설명
					subject_description ,  //관련 고교 과목명
					subject_name ,// --과목
					act_name , //-- 진로탐색활동 이름
					act_description , //-- 진로탐색 활동 내용
					job , //-- 관련 직업
					qualifications ,// -- 관련자격
					interest , //-- 흥미와 적성 없을 수 도 있음
					property , //-- 학과 특성
					gradeuate , //-- 기업 및 산업체
					description , //-- 기업 및 산업체 내용
					SBJECT_NM , //-- 대학 주 교과목
					SBJECT_SUMRY , //-- 교과목 내용
					
					area ,  //학교 위치
					schoolURL , //-- 학교 url
					campus_nm , //--캠퍼스 본교, 분교
					majorName , //-- 과 이름
					schoolName , //-- 학교 이름
					
					fieldItem , //-- 졸업 후 취업분야
					fieldData , //-- 졸업 후 취업 분야 퍼센트
					afterItem , //-- 졸업 후 진학, 취업, 기타
					afterData , //-- 졸업 후 진학 취업 기타 퍼센트
					salaryItem , //-- 첫직장 임금
					salaryData , //-- 첫직장 임금 평균값
					satisfactionItem , //-- 첫직장 만족도 매우 불만족,불만족, 보통, 만족,매우 만족
					satisfactionData , //-- 퍼센트
					employmentItem , // 취업률 전체 남 여
					employmentData , // 취업률 퍼센트
					applicantItem , //-- 지원자 , 입학자
					applicantData,  //-- 값
					priority;
	public MajorVo() {
	}
	
	public MajorVo(String lClass, String majorSeq, String uni, String major, String salary, String employment,
			String department, String summary, String subject_description, String subject_name, String act_name,
			String act_description, String job, String qualifications, String interest, String property,
			String gradeuate, String description, String sBJECT_NM, String sBJECT_SUMRY, String area, String schoolURL,
			String campus_nm, String majorName, String schoolName, String fieldItem, String fieldData, String afterItem,
			String afterData, String salaryItem, String salaryData, String satisfactionItem, String satisfactionData,
			String employmentItem, String employmentData, String applicantItem, String applicantData, String priority) {
		super();
		this.lClass = lClass;
		this.majorSeq = majorSeq;
		this.uni = uni;
		this.major = major;
		this.salary = salary;
		this.employment = employment;
		this.department = department;
		this.summary = summary;
		this.subject_description = subject_description;
		this.subject_name = subject_name;
		this.act_name = act_name;
		this.act_description = act_description;
		this.job = job;
		this.qualifications = qualifications;
		this.interest = interest;
		this.property = property;
		this.gradeuate = gradeuate;
		this.description = description;
		SBJECT_NM = sBJECT_NM;
		SBJECT_SUMRY = sBJECT_SUMRY;
		this.area = area;
		this.schoolURL = schoolURL;
		this.campus_nm = campus_nm;
		this.majorName = majorName;
		this.schoolName = schoolName;
		this.fieldItem = fieldItem;
		this.fieldData = fieldData;
		this.afterItem = afterItem;
		this.afterData = afterData;
		this.salaryItem = salaryItem;
		this.salaryData = salaryData;
		this.satisfactionItem = satisfactionItem;
		this.satisfactionData = satisfactionData;
		this.employmentItem = employmentItem;
		this.employmentData = employmentData;
		this.applicantItem = applicantItem;
		this.applicantData = applicantData;
		this.priority = priority;
	}

	public MajorVo(String lClass, String majorSeq, String uni, String major, String salary, String employment,
			String department, String summary, String subject_description, String subject_name, String act_name,
			String act_description, String job, String qualifications, String interest, String property,
			String gradeuate, String description, String SBJECT_NM, String SBJECT_SUMRY, String area,
			String schoolURL, String campus_nm, String majorName, String schoolName, String fieldItem,
			String fieldData, String afterItem, String afterData, String salaryItem, String salaryData,
			String satisfactionItem, String satisfactionData, String employmentItem, String employmentData,
			String applicantItem, String applicantData) {
		this.lClass = lClass;
		this.majorSeq = majorSeq;
		this.uni = uni;
		this.major = major;
		this.salary = salary;
		this.employment = employment;
		this.department = department;
		this.summary = summary;
		this.subject_description = subject_description;
		this.subject_name = subject_name;
		this.act_name = act_name;
		this.act_description = act_description;
		this.job = job;
		this.qualifications = qualifications;
		this.interest = interest;
		this.property = property;
		this.gradeuate = gradeuate;
		this.description = description;
		this.SBJECT_NM = SBJECT_NM;
		this.SBJECT_SUMRY = SBJECT_SUMRY;
		this.area = area;
		this.schoolURL = schoolURL;
		this.campus_nm = campus_nm;
		this.majorName = majorName;
		this.schoolName = schoolName;
		this.fieldItem = fieldItem;
		this.fieldData = fieldData;
		this.afterItem = afterItem;
		this.afterData = afterData;
		this.salaryItem = salaryItem;
		this.salaryData = salaryData;
		this.satisfactionItem = satisfactionItem;
		this.satisfactionData = satisfactionData;
		this.employmentItem = employmentItem;
		this.employmentData = employmentData;
		this.applicantItem = applicantItem;
		this.applicantData = applicantData;
	}
	
	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getlClass() {
		return lClass;
	}

	public void setlClass(String lClass) {
		this.lClass = lClass;
	}

	public String getMajorSeq() {
		return majorSeq;
	}

	public void setMajorSeq(String majorSeq) {
		this.majorSeq = majorSeq;
	}

	public String getUni() {
		return uni;
	}

	public void setUni(String uni) {
		this.uni = uni;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getEmployment() {
		return employment;
	}

	public void setEmployment(String employment) {
		this.employment = employment;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getSubject_description() {
		return subject_description;
	}

	public void setSubject_description(String subject_description) {
		this.subject_description = subject_description;
	}

	public String getSubject_name() {
		return subject_name;
	}

	public void setSubject_name(String subject_name) {
		this.subject_name = subject_name;
	}

	public String getAct_name() {
		return act_name;
	}

	public void setAct_name(String act_name) {
		this.act_name = act_name;
	}

	public String getAct_description() {
		return act_description;
	}

	public void setAct_description(String act_description) {
		this.act_description = act_description;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getQualifications() {
		return qualifications;
	}

	public void setQualifications(String qualifications) {
		this.qualifications = qualifications;
	}

	public String getInterest() {
		return interest;
	}

	public void setInterest(String interest) {
		this.interest = interest;
	}

	public String getProperty() {
		return property;
	}

	public void setProperty(String property) {
		this.property = property;
	}

	public String getGradeuate() {
		return gradeuate;
	}

	public void setGradeuate(String gradeuate) {
		this.gradeuate = gradeuate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSBJECT_NM() {
		return SBJECT_NM;
	}

	public void setSBJECT_NM(String sBJECT_NM) {
		SBJECT_NM = sBJECT_NM;
	}

	public String getSBJECT_SUMRY() {
		return SBJECT_SUMRY;
	}

	public void setSBJECT_SUMRY(String sBJECT_SUMRY) {
		SBJECT_SUMRY = sBJECT_SUMRY;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getSchoolURL() {
		return schoolURL;
	}

	public void setSchoolURL(String schoolURL) {
		this.schoolURL = schoolURL;
	}

	public String getCampus_nm() {
		return campus_nm;
	}

	public void setCampus_nm(String campus_nm) {
		this.campus_nm = campus_nm;
	}

	public String getMajorName() {
		return majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	public String getSchoolName() {
		return schoolName;
	}

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}

	public String getFieldItem() {
		return fieldItem;
	}

	public void setFieldItem(String fieldItem) {
		this.fieldItem = fieldItem;
	}

	public String getFieldData() {
		return fieldData;
	}

	public void setFieldData(String fieldData) {
		this.fieldData = fieldData;
	}

	public String getAfterItem() {
		return afterItem;
	}

	public void setAfterItem(String afterItem) {
		this.afterItem = afterItem;
	}

	public String getAfterData() {
		return afterData;
	}

	public void setAfterData(String afterData) {
		this.afterData = afterData;
	}

	public String getSalaryItem() {
		return salaryItem;
	}

	public void setSalaryItem(String salaryItem) {
		this.salaryItem = salaryItem;
	}

	public String getSalaryData() {
		return salaryData;
	}

	public void setSalaryData(String salaryData) {
		this.salaryData = salaryData;
	}

	public String getSatisfactionItem() {
		return satisfactionItem;
	}

	public void setSatisfactionItem(String satisfactionItem) {
		this.satisfactionItem = satisfactionItem;
	}

	public String getSatisfactionData() {
		return satisfactionData;
	}

	public void setSatisfactionData(String satisfactionData) {
		this.satisfactionData = satisfactionData;
	}

	public String getEmploymentItem() {
		return employmentItem;
	}

	public void setEmploymentItem(String employmentItem) {
		this.employmentItem = employmentItem;
	}

	public String getEmploymentData() {
		return employmentData;
	}

	public void setEmploymentData(String employmentData) {
		this.employmentData = employmentData;
	}

	public String getApplicantItem() {
		return applicantItem;
	}

	public void setApplicantItem(String applicantItem) {
		this.applicantItem = applicantItem;
	}

	public String getApplicantData() {
		return applicantData;
	}

	public void setApplicantData(String applicantData) {
		this.applicantData = applicantData;
	}

	





}
