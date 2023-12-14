package com.opdogkl.shop.fashion;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/FashionC")
public class FashionC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 강아지 패션 전체 조회하는일
		FashionDAO.getAllFashion(request);
		FashionDAO.paging(1, request);
		
		request.setAttribute("contentPage", "2_shop/2_1_fashion/fashion.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}