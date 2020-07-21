package controller.headMem;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class HeadMemCtrl extends HttpServlet implements Servlet {
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(
				contextPath.length());
		
	    if(command.equals("/head/headHunterRegist.head")) {
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/headMem/headHunter_regist.jsp");
			dispatcher.forward(request, response);
			
		}else if(command.equals("/head/headIdConfirm.head")) {
			HeadIdCFAction action = new HeadIdCFAction();
			action.execute(request);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/headMem/headIdConfirm.jsp");
			dispatcher.forward(request, response);
			
		}else if(command.equals("/head/HeadMemJoin.head")) {
			HeadMemInsertA action = new HeadMemInsertA();
			action.execute(request);
			HttpSession session = request.getSession();
			if(session.getAttribute("logId")!= null) {
				response.sendRedirect("meberList.head");
			}else {
				response.sendRedirect("../main.main");
			}
			
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(req, resp);
	}
	

}
