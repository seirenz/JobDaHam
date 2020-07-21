package controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.member.MeberListAction;
import controller.member.MemberInfoAction;

public class AdminCtrl extends HttpServlet implements Servlet {
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		if(command.equals("/ad/admin.ad")) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/index.jsp");
			dispatcher.forward(request, response);
			
		}else if(command.equals("/ad/companyList.ad")) {
			CompanyListAction action = new CompanyListAction();
			action.execute(request);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/company_list.jsp");
			dispatcher.forward(request, response);
			
		}else if(command.equals("/ad/jobseekerList.ad")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/jobseeker_list.jsp");
			dispatcher.forward(request, response);
			
		}else if(command.equals("/ad/compInfo.ad")) {
			CompanyInfoAction action = new CompanyInfoAction();
			action.execute(request);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/admin/company_detail.jsp");
			dispatcher.forward(request, response);
			
		}else if(command.equals("/ad/headHunterList.ad")) {
			HeadListAction action = new HeadListAction();
			action.execute(request);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/headhunter_list.jsp");
			dispatcher.forward(request, response);
			
		}
		
		
		
	}
	@Override
	protected void doGet(HttpServletRequest req, 
			HttpServletResponse resp) 
					throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(req, resp);
	}

}
