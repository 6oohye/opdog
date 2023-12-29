package com.opdoghj.volunteer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.opdoghw.login.LoginDAO;

@WebServlet("/VolunteerDetailC")
public class VolunteerDetailC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LoginDAO.loginCheck(request);
		VolunteerDAO.getPost(request);
		System.out.println("11");
		request.setAttribute("contentPage", "../3_volunteer/volunteerDetail.jsp");
		request.getRequestDispatcher("0_main/contentPage.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LoginDAO.loginCheck(request);
		//조회하는걸로 이동 
		VolunteerDAO.getAllpost(request);
		VolunteerDAO.Paging(1, request);
		request.setAttribute("contentPage", "../3_volunteer/volunteerSeoul.jsp");
		request.getRequestDispatcher("0_main/contentPage.jsp").forward(request, response);
	}

}
