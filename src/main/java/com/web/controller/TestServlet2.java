package com.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class TestServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println(uri);
		int idx = uri.lastIndexOf("/");
		uri = uri.substring(idx+1);
		String url = "/WEB-INF/views/test/";
		if("list1".equals(uri)){
			url+= "test-list2.jsp";
		}
		List<String> strList = new ArrayList<String>();
		strList.add("qkqh");
		strList.add("adad");
		strList.add("asdf");
		request.setAttribute("strList", strList);
		
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
