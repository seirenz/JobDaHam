package controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.DAO.CompMemDAO;
import model.DTO.CompMemDTO;

public class CompanyListAction {
	public void execute(HttpServletRequest request) {
	
		String userId = null;
		CompMemDAO dao = new CompMemDAO();
		List<CompMemDTO> list = dao.compMemSelect(userId);
		Integer count = dao.compMemCount();
		request.setAttribute("companyList", list);
		request.setAttribute("count", count);
	
		
		
		
		
	}

}
