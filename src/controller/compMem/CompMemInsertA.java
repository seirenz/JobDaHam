package controller.compMem;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import model.DAO.CompMemDAO;
import model.DAO.MemberDAO;
import model.DTO.CompMemDTO;

public class CompMemInsertA {
	
	
	public void execute(HttpServletRequest request) {
		
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		String compName = request.getParameter("compName");
		String repregent = request.getParameter("repregent");
		String bNum = request.getParameter("bNum");
		String compType = request.getParameter("compType");
		String compAddr = request.getParameter("compAddr");
		String cmanagerName =  request.getParameter("cmanagerName");
		String compId = request.getParameter("compId");
		String compPw = request.getParameter("compPw");
		String compTel = request.getParameter("compTel");
		String compEmail = request.getParameter("compEmail");
		String marketing = request.getParameter("marketing");
		String infoAgree =  request.getParameter("infoAgree");
		String workRequest = request.getParameter("workRequest");
		
		CompMemDTO dto = new CompMemDTO();
		dto.setbNum(bNum);
		dto.setCmanagerName(cmanagerName);
		dto.setCompAddr(compAddr);
		dto.setCompEmail(compEmail);
		dto.setCompId(compId);
        dto.setCompName(compName);
        dto.setCompPw(compPw);
        dto.setCompTel(compTel);
        dto.setCompType(compType);
        dto.setInfoAgree(infoAgree);
        dto.setMarketing(marketing);
        dto.setRepregent(repregent);
        dto.setWorkRequest(workRequest);
	
		
		CompMemDAO dao = new CompMemDAO();
		dao.compMemInsert(dto);
	

	}
}
