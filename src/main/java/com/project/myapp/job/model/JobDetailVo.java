package com.project.myapp.job.model;

public class JobDetailVo {

	private String job, 	//직업이름
	
				   summary, //하는일
				   
				   similarJob, //비슷한 직업
				   
				   empway , //입직 및 취업 방법
				   
				   employment ,//고용현황
				   							
				   salery ,//임금수준
				  
				   preparation , // --졍규 교육 과정
				   
				   training , //--직업훈련
				   
				   certification , //--관련 자격증
				 
				   capacity , //  --관련자격
				  
				   ability , // --핵심능력
				  
				   possibility, // --직업 전망
				  
				   aptitude , // --적성 및 흥미
				  
				   reward , // --보상
				 
				   rewardValue , //  --보상 값
				   
				   employmentsecurity , //--고용안정 
				  
				   employmentsecurityvalue , // --고용안정 값
				   
				   developmentPossibility , //--발전가능성
				  
				   developmentPossibilityValue , // --발전가능성 값
				  
				   workingConditions , // --근무여건
				  
				   workingConditionsValue , // --근무여건 값
				   
				   professional , //--직업전문성
				   
				   professionalValue , //--직업전문성 값
				  
				   equalEmployment , // --고용평등
				   
				   equalEmploymentValue, //--고용평등 값
	
				   major;
				   
	public JobDetailVo(  String job, 	//직업이름
						  String summary, //하는일
						  String similarJob, //비슷한 직업
						  String empway , //입직 및 취업 방법
						  String employment ,//고용현황
						  String salery ,//임금수준
						  String preparation , // --졍규 교육 과정
						  String training , //--직업훈련
						  String certification , //--관련 자격증
						  String capacity , //  --관련자격
						  String ability , // --핵심능력
						  String possibility, // --직업 전망
						  String aptitude , // --적성 및 흥미
						  String reward , // --보상
						  String rewardValue , //  --보상 값
						  String employmentsecurity , //--고용안정 
						  String employmentsecurityvalue , // --고용안정 값
						  String developmentPossibility , //--발전가능성
						  String developmentPossibilityValue , // --발전가능성 값
						  String workingConditions , // --근무여건
						  String workingConditionsValue , // --근무여건 값
						  String professional , //--직업전문성
						  String professionalValue , //--직업전문성 값
						  String equalEmployment , // --고용평등
						  String equalEmploymentValue,  //--고용평등 값
						  String major
					   ) {
		
		this.job = job;
		this.summary = summary;
		this.similarJob = similarJob;
		this.empway = empway;
		this.employment = employment;
		this.salery = salery;
		this.preparation = preparation;
		this.training = training;
		this.certification = certification;
		this.capacity = capacity;
		this.ability = ability;
		this.possibility = possibility;
		this.aptitude = aptitude;
		this.reward = reward;
		this.rewardValue = rewardValue;
		this.employmentsecurity = employmentsecurity;
		this.employmentsecurityvalue = employmentsecurityvalue;
		this.developmentPossibility = developmentPossibility;
		this.developmentPossibilityValue = developmentPossibilityValue;
		this.workingConditions = workingConditions;
		this.workingConditionsValue = workingConditionsValue;
		this.professional = professional;
		this.professionalValue =professionalValue;
		this.equalEmployment = equalEmployment;
		this.equalEmploymentValue = equalEmploymentValue;
		this.major = major;
	}
	
	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getJob() {
		return job;
	}


	public void setJob(String job) {
		this.job = job;
	}


	public String getSummary() {
		return summary;
	}


	public void setSummary(String summary) {
		this.summary = summary;
	}


	public String getSimilarJob() {
		return similarJob;
	}


	public void setSimilarJob(String similarJob) {
		this.similarJob = similarJob;
	}


	public String getEmpway() {
		return empway;
	}


	public void setEmpway(String empway) {
		this.empway = empway;
	}


	public String getEmployment() {
		return employment;
	}


	public void setEmployment(String employment) {
		this.employment = employment;
	}


	public String getSalery() {
		return salery;
	}


	public void setSalery(String salery) {
		this.salery = salery;
	}


	public String getPreparation() {
		return preparation;
	}


	public void setPreparation(String preparation) {
		this.preparation = preparation;
	}


	public String getTraining() {
		return training;
	}


	public void setTraining(String training) {
		this.training = training;
	}


	public String getCertification() {
		return certification;
	}


	public void setCertification(String certification) {
		this.certification = certification;
	}


	public String getCapacity() {
		return capacity;
	}


	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}


	public String getAbility() {
		return ability;
	}


	public void setAbility(String ability) {
		this.ability = ability;
	}


	public String getPossibility() {
		return possibility;
	}


	public void setPossibility(String possibility) {
		this.possibility = possibility;
	}


	public String getAptitude() {
		return aptitude;
	}


	public void setAptitude(String aptitude) {
		this.aptitude = aptitude;
	}


	public String getReward() {
		return reward;
	}


	public void setReward(String reward) {
		this.reward = reward;
	}


	public String getRewardValue() {
		return rewardValue;
	}


	public void setRewardValue(String rewardValue) {
		this.rewardValue = rewardValue;
	}


	public String getEmploymentsecurity() {
		return employmentsecurity;
	}


	public void setEmploymentsecurity(String employmentsecurity) {
		this.employmentsecurity = employmentsecurity;
	}


	public String getEmploymentsecurityvalue() {
		return employmentsecurityvalue;
	}


	public void setEmploymentsecurityvalue(String employmentsecurityvalue) {
		this.employmentsecurityvalue = employmentsecurityvalue;
	}


	public String getDevelopmentPossibility() {
		return developmentPossibility;
	}


	public void setDevelopmentPossibility(String developmentPossibility) {
		this.developmentPossibility = developmentPossibility;
	}


	public String getDevelopmentPossibilityValue() {
		return developmentPossibilityValue;
	}


	public void setDevelopmentPossibilityValue(String developmentPossibilityValue) {
		this.developmentPossibilityValue = developmentPossibilityValue;
	}


	public String getWorkingConditions() {
		return workingConditions;
	}


	public void setWorkingConditions(String workingConditions) {
		this.workingConditions = workingConditions;
	}


	public String getWorkingConditionsValue() {
		return workingConditionsValue;
	}


	public void setWorkingConditionsValue(String workingConditionsValue) {
		this.workingConditionsValue = workingConditionsValue;
	}


	public String getProfessional() {
		return professional;
	}


	public void setProfessional(String professional) {
		this.professional = professional;
	}


	public String getProfessionalValue() {
		return professionalValue;
	}


	public void setProfessionalValue(String professionalValue) {
		this.professionalValue = professionalValue;
	}


	public String getEqualEmployment() {
		return equalEmployment;
	}


	public void setEqualEmployment(String equalEmployment) {
		this.equalEmployment = equalEmployment;
	}


	public String getEqualEmploymentValue() {
		return equalEmploymentValue;
	}


	public void setEqualEmploymentValue(String equalEmploymentValue) {
		this.equalEmploymentValue = equalEmploymentValue;
	}

}
