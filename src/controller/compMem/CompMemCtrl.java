package controller.compMem;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class CompMemCtrl extends HttpServlet implements Servlet {
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(
				contextPath.length());
		
	    if(command.equals("/comp/companyRegist.comp")) {
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/compMem/company_regist.jsp");
			dispatcher.forward(request, response);
			
		}else if(command.equals("/comp/compIdConfirm.comp")) {
			CompIdCFAction action = new CompIdCFAction();
			action.execute(request);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/compMem/compIdConfirm.jsp");
			dispatcher.forward(request, response);
			
		}else if(command.equals("/comp/CompMemJoin.comp")) {
			CompMemInsertA action = new CompMemInsertA();
			action.execute(request);
			HttpSession session = request.getSession();
			if(session.getAttribute("logId")!= null) {
				response.sendRedirect("meberList.mem");
			}else {
				response.sendRedirect("../main.main");
			}
			
		}else if(command.equals("/comp/companyDel.comp")) {
			
			 request.setAttribute("compId", request.getParameter("compId"));
			RequestDispatcher dispatcher = request.getRequestDispatcher("/compMem/company_delete.jsp");
			dispatcher.forward(request, response);
		
			
		}else if(command.equals("/comp/companyDelPro.comp")) {
			compDelAction action = new compDelAction();
			action.execute(request);
			response.sendRedirect("../main.main");
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
