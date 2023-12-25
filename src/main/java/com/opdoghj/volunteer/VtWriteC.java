package com.opdoghj.volunteer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.opdoghw.login.LoginDAO;

@WebServlet("/VtWriteC")
public class VtWriteC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("contentPage", "../3_volunteer/volunteerWrite.jsp");
	
		request.getRequestDispatcher("0_main/contentPage.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	VolunteerDAO.WritePost(request);
	request.setAttribute("contentPage", "../3_volunteer/volunteerSeoul.jsp");
	LoginDAO.loginCheck(request);
	request.getRequestDispatcher("0_main/contentPage.jsp").forward(request, response);
	}

}
