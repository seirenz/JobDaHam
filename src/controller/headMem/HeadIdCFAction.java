package controller.headMem;

import javax.servlet.http.HttpServletRequest;


import model.DAO.HeadMemDAO;

public class HeadIdCFAction {
	public void execute(HttpServletRequest request) {
		String headId = request.getParameter("headId");
		HeadMemDAO dao = new HeadMemDAO();
		String confirmName= dao.headNameConfirm(headId);
		request.setAttribute("headId" , headId);
		request.setAttribute("confirmId",confirmName);
	}
	


}
