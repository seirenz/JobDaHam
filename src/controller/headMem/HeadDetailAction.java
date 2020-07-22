package controller.headMem;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.DAO.HeadMemDAO;
import model.DTO.HeadMemDTO;

public class HeadDetailAction {
	
		public void execute(HttpServletRequest request) {
			HttpSession session = request.getSession();
			String userId = (String)session.getAttribute("logId");
			HeadMemDAO dao = new HeadMemDAO();
			List<HeadMemDTO> list = dao.headMemSelect(userId);
			request.setAttribute("list", list.get(0));
			
		}

}
