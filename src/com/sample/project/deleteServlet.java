package com.sample.project;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteServlet extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/plain");
		String id = req.getParameter("eid");
		PersistenceManager pm = PMF.get().getPersistenceManager();
		User user = new User();
		Query query = pm.newQuery(User.class);
		query.setFilter("eid == eidParam");
		query.declareParameters("int eidParam");
		List<User> list = (List<User>) query.execute(id);
		if(!list.isEmpty()) {
			query.deletePersistentAll(id);
			req.setAttribute("Message", "sucessfully deleted");
			req.getRequestDispatcher("delete.jsp").forward(req, resp);
		}
		else {
			req.setAttribute("Message", "Id does not exist");
			req.getRequestDispatcher("delete.jsp").forward(req, resp);
		}
	}
}
