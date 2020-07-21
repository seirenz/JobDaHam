package controller.compMem;

import javax.servlet.http.HttpServletRequest;

import model.DAO.CompMemDAO;

public class compDelAction {
	public void execute(HttpServletRequest request) {
		
		String userId = request.getParameter("compId");
		String userPw = request.getParameter("compPw");
		
		CompMemDAO dao = new CompMemDAO();
		dao.companyDelete(userId, userPw);
	}
}
