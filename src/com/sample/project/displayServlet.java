package com.sample.project;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


public class displayServlet extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		doPost(req, resp);
	}
	@SuppressWarnings({ "unchecked", "unused" })
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
//		resp.setContentType("application/json");
		resp.setContentType("text/plain");
		String table = "";
		System.out.println("dfsalkj");
		PersistenceManager pm = PMF.get().getPersistenceManager();
		User user = new User();
		Query query = pm.newQuery(User.class);
		List<User> list = (List<User>) query.execute();
		System.out.println(list);
		if(!list.isEmpty()) {
			System.out.println("inside list");
//			resp.getWriter().write(new Gson().toJson(list));
			for(User userObject : list) {
				table +="<tr><td>"+userObject.getEid()+"</td><td>"+userObject.getName()+"</td><td>"+userObject.getPassword()+"</td></tr>"; 
			}
			System.out.println("inside listwer");
			System.out.println(table);
			req.setAttribute("userDetails", table);
			req.getRequestDispatcher("display.jsp").forward(req, resp);
		}
	}
}
