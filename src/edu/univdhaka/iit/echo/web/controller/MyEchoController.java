package edu.univdhaka.iit.echo.web.controller;

import java.io.IOException;
import java.util.Collections;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import edu.univdhaka.iit.echo.dao.EchoDao;
import edu.univdhaka.iit.echo.dao.EchoDaoImpl;
import edu.univdhaka.iit.echo.dao.PhotoDao;
import edu.univdhaka.iit.echo.dao.PhotoDaoImpl;
import edu.univdhaka.iit.echo.domain.Echo;

/**
 * Servlet implementation class MyEchoController....This class helps to view all posted
 * echos of a user
 */
@WebServlet("/myEchos")
public class MyEchoController extends HttpServlet {

	private static final long serialVersionUID = 7429250758571675333L;

	private static final Logger log = LoggerFactory
			.getLogger(MyEchoController.class);
	EchoDao echoDao = new EchoDaoImpl();
	PhotoDao photoDao = new PhotoDaoImpl();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		log.debug("doGet() -> supposed to return to user's psted echos's page");

		RequestDispatcher requestDispatcher = req
				.getRequestDispatcher("/WEB-INF/jsp/myEchos.jsp");
		
		HttpSession session = req.getSession();
		String userName = ((String) session.getAttribute("userName"));
		
		// Fetching the echos of a user from database to view it on web page
		List<Echo> list = echoDao.findEchoByUserName(userName);
		Collections.reverse(list);
			
		for(int i=0; i<list.size(); i++){
			System.out.println(list.get(i).getEcho());
		}
		// sending echo to the my echo page
		req.setAttribute("myEchos", list);

		requestDispatcher.forward(req, resp);

	}
}
