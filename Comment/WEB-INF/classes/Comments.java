package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Comments extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	String duty=request.getParameter("t1");
	String hitman=request.getParameter("t2");
	String fifa=request.getParameter("t3");
	String empire=request.getParameter("t4");
	try{
		HttpSession session=request.getSession();
		String user = session.getAttribute("user").toString();
		String type = "none";
		String comment = "none";
		int length = 0;
		String msg = "none";
		if(duty != null){
			duty = duty.trim();
			length = duty.length();
			type = "Call of Duty";
			comment = duty;
			if(length > 0)
				msg = DBConnection.comment(user,type,comment);
		}
		if(hitman != null){
			hitman = hitman.trim();
			length = hitman.length();
			type = "Hitman";
			comment = hitman;
			if(length > 0)
				msg = DBConnection.comment(user,type,comment);
		}
		if(fifa != null){
			fifa = fifa.trim();
			length = fifa.length();
			type = "FIFA 2017";
			comment = fifa;
			if(length > 0)
				msg = DBConnection.comment(user,type,comment);
		}
		if(empire != null){
			empire = empire.trim();
			length = empire.length();
			type = "Clockwork Empires";
			comment = empire;
			if(length > 0)
				msg = DBConnection.comment(user,type,comment);
		}
		if(msg.equals("success")){
			response.sendRedirect("CommentScreen.jsp?t1=Your comment details added");
		}else{
			RequestDispatcher rd=request.getRequestDispatcher("CommentScreen.jsp?t1=Error may be comment empty");
			rd.forward(request, response);
		}
	}catch(Exception e){
		e.printStackTrace();
	}
}

}
