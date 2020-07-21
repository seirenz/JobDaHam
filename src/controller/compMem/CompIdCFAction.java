package controller.compMem;

import javax.servlet.http.HttpServletRequest;

import model.DAO.CompMemDAO;

public class CompIdCFAction {

	public void execute(HttpServletRequest request) {
			String compId = request.getParameter("compId");
			CompMemDAO dao = new CompMemDAO();
			String confirmName= dao.comNameConfirm(compId);
			request.setAttribute("compId" , compId);
			request.setAttribute("confirmId",confirmName);
		}
		
	

}
