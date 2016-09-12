package com.sample.project;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.apphosting.utils.config.ClientDeployYamlMaker.Request;

@SuppressWarnings("serial")
public class addServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/plain");
		String id = req.getParameter("eid");
		String name = req.getParameter("name");
		String pass = req.getParameter("pass");
		PersistenceManager pm = PMF.get().getPersistenceManager();
		User user = new User();
		Query query = pm.newQuery(User.class);
		query.setFilter("eid == eidParam");
		query.declareParameters("int eidParam");
		List<User> list = (List<User>) query.execute(id);
		if(list.isEmpty()){
			user.setEid(id);
			user.setName(name);
			user.setPassword(pass);
			pm.makePersistent(user);
			req.setAttribute("errorMessage", "Sucessfully stored");
			req.getRequestDispatcher("add.jsp").forward(req, resp);
		} else {
			req.setAttribute("errorMessage", "ID already exists");
			req.getRequestDispatcher("add.jsp").forward(req, resp);
		}
	}
}
