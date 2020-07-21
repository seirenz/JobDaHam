package controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.DAO.HeadMemDAO;
import model.DTO.HeadMemDTO;

public class headInfoAction {

	public void execute(HttpServletRequest request) {
		 String userId = request.getParameter("headId");
		 HeadMemDAO dao = new HeadMemDAO();
		 List<HeadMemDTO> list = dao.headMemSelect(userId);
		 System.out.println();
		 request.setAttribute("dto", list.get(0));
	}

}
