package controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.DAO.CompMemDAO;
import model.DTO.CompMemDTO;

public class CompanyInfoAction {
	
	public void execute(HttpServletRequest request) {
	
	 String userId = request.getParameter("compId");
	 CompMemDAO dao = new CompMemDAO();
	 List<CompMemDTO> list = dao.compMemSelect(userId);
	 System.out.println();
	 request.setAttribute("dto", list.get(0));

	}

	
}
