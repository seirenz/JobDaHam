package controller.headMem;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.DAO.HeadMemDAO;

import model.DTO.HeadMemDTO;


public class HeadDetailAction {
	
	public void execute(HttpServletRequest request) {
		
		String num = request.getParameter("num");
		HeadMemDAO dao = new HeadMemDAO();
		List<HeadMemDTO> list = dao.headMemSelect("userId");
		request.setAttribute("dto", list.get(0));
		dao.updateReadCount(num, "board");
		//ddddd
	}

}
