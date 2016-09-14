package com.sample.project;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.*;

import sun.print.PrinterJobWrapper;

@SuppressWarnings("serial")
public class Sample_projectServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/plain");
		PrintWriter out = resp.getWriter();
		String action = req.getParameter("action");
		if(action.equals("add")) {
			out.println("add");
		}
		else if(action.equals("update")) {
			out.println("update");
		}
	}
}
