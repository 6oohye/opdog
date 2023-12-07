package com.opdogkl.shop.fashion;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/FashionPageC")
public class FashionPageC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 강아지 패션 페이지 
		
		FashionDAO.getAllFashion(request);
		int p = Integer.parseInt(request.getParameter("p"));
		FashionDAO.paging(p, request);
		
		request.setAttribute("contentPage", "fashion.jsp");
		request.getRequestDispatcher("lkl/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
