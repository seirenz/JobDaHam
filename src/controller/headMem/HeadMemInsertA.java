package controller.headMem;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import model.DAO.HeadMemDAO;
import model.DTO.HeadMemDTO;



public class HeadMemInsertA {
	
public void execute(HttpServletRequest request) {
		
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		String headName = request.getParameter("headName");
		String headOwner = request.getParameter("headOwner");
		String bNum = request.getParameter("bNum");
		String headType = request.getParameter("headType");
		String headAddr = request.getParameter("headAddr");
		String hmanagerName =  request.getParameter("hmanagerName");
		String headId = request.getParameter("headId");
		String headPw = request.getParameter("headPw");
		String headTel = request.getParameter("headTel");
		String headEmail = request.getParameter("headEmail");
		String marketing = request.getParameter("marketing");
		String infoAgree =  request.getParameter("infoAgree");
		String workRequest = request.getParameter("workRequest");
		
		HeadMemDTO dto = new HeadMemDTO();
		dto.setbNum(bNum);
		dto.setHmanagerName(hmanagerName);
		dto.setHeadAddr(headAddr);
		dto.setHeadEmail(headEmail);
		dto.setHeadId(headId);
        dto.setHeadName(headName);
        dto.setHeadPw(headPw);
        dto.setHeadTel(headTel);
        dto.setHeadType(headType);
        dto.setInfoAgree(infoAgree);
        dto.setMarketing(marketing);
        dto.setHeadOwner(headOwner);
        dto.setWorkRequest(workRequest);
	
		
        HeadMemDAO dao = new HeadMemDAO();
		dao.headMemInsert(dto);
	}
	

}
