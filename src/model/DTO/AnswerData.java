package model.DTO;

import java.util.List;

public class AnswerData {
     
	List<String> responses;
	Respondent res;
	public List<String> getResponses() {
		return responses;
	}
	public void setResponses(List<String> responses) {
		this.responses = responses;
	}
	public Respondent getRes() {
		return res;
	}
	public void setRes(Respondent res) {
		this.res = res;
	}

	
}
