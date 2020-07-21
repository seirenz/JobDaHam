package controller.member;

import javax.servlet.http.HttpServletRequest;

import model.DAO.MemberDAO;

public class MemberConfirmAction {
	public void execute(HttpServletRequest request) {
		String comName = request.getParameter("comName");
		MemberDAO dao = new MemberDAO();
		String confirmId = dao.memberConfirm(comName);
		request.setAttribute("comName" , comName);
		request.setAttribute("confirmId",confirmId);
	}
}
