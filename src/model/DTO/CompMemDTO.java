package model.DTO;

import java.sql.Timestamp;

public class CompMemDTO {
	String compNum;
	String compName ;
	String repregent ;
	String bNum ;
	String compType ;
	String compAddr ;
	String cmanagerName ;
	String compId ;
	String compPw ;
	String compTel;
	String compEmail ;
	Timestamp compRegist;
	String joinOk;
	String marketing ;
	String infoAgree ;
	String workRequest ;
	
	
	public String getJoinOk() {
		return joinOk;
	}
	public void setJoinOk(String joinOk) {
		this.joinOk = joinOk;
	}

	public String getCompNum() {
		return compNum;
	}
	public void setCompNum(String compNum) {
		this.compNum = compNum;
	}
	public String getCompName() {
		return compName;
	}
	public void setCompName(String compName) {
		this.compName = compName;
	}
	public String getRepregent() {
		return repregent;
	}
	public void setRepregent(String repregent) {
		this.repregent = repregent;
	}
	public String getbNum() {
		return bNum;
	}
	public void setbNum(String bNum) {
		this.bNum = bNum;
	}
	public String getCompType() {
		return compType;
	}
	public void setCompType(String compType) {
		this.compType = compType;
	}
	public String getCompAddr() {
		return compAddr;
	}
	public void setCompAddr(String compAddr) {
		this.compAddr = compAddr;
	}
	public String getCmanagerName() {
		return cmanagerName;
	}
	public void setCmanagerName(String cmanagerName) {
		this.cmanagerName = cmanagerName;
	}
	public String getCompId() {
		return compId;
	}
	public void setCompId(String compId) {
		this.compId = compId;
	}
	public String getCompPw() {
		return compPw;
	}
	public void setCompPw(String compPw) {
		this.compPw = compPw;
	}
	public String getCompTel() {
		return compTel;
	}
	public void setCompTel(String compTel) {
		this.compTel = compTel;
	}
	public String getCompEmail() {
		return compEmail;
	}
	public void setCompEmail(String compEmail) {
		this.compEmail = compEmail;
	}
	public Timestamp getCompRegist() {
		return compRegist;
	}
	public void setCompRegist(Timestamp compRegist) {
		this.compRegist = compRegist;
	}
	
	public String getMarketing() {
		return marketing;
	}
	public void setMarketing(String marketing) {
		this.marketing = marketing;
	}
	public String getInfoAgree() {
		return infoAgree;
	}
	public void setInfoAgree(String infoAgree) {
		this.infoAgree = infoAgree;
	}
	public String getWorkRequest() {
		return workRequest;
	}
	public void setWorkRequest(String workRequest) {
		this.workRequest = workRequest;
	}
	

}
