package controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.DAO.HeadMemDAO;
import model.DTO.HeadMemDTO;

public class HeadListAction {
	public void execute(HttpServletRequest request) {
		
		String userId = null;
		HeadMemDAO dao = new HeadMemDAO();
		List<HeadMemDTO> list = dao.headMemSelect(userId);
		Integer count = dao.headMemCount();
		request.setAttribute("headhunterList", list);
		request.setAttribute("count", count);
	
		
		
		
		
	}

}
