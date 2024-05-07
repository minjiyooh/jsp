package study2.mapping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("*.do4")
public class Test4Controller extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String viewPage = "/WEB-INF/study2/mapping/";
		
		String uri = request.getRequestURI();
		
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf("."));
		
		if(com.equals("test4")) {
			
			viewPage += "test4.jsp";
		}
		else if(com.equals("list")) {
			
			// viewPage = "/WEB-INF/study2/mapping/list.jsp";
			viewPage += "list.jsp";
		}
		else if(com.equals("input")) {
			
			// viewPage = "/WEB-INF/study2/mapping/input.jsp";
			viewPage += "input.jsp";
		}
		else if(com.equals("update")) {
			
			viewPage += "update.jsp";
		}
		else if(com.equals("delete")) {
			
			viewPage += "delete.jsp";
		}
		else if(com.equals("search")) {
			
			viewPage += "search.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
