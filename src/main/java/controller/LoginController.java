package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@SuppressWarnings("serial")
@WebServlet("/login")
public class LoginController extends HttpServlet{
		@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String admin=request.getParameter("user").trim();
			String pwd=request.getParameter("password").trim();
			String radio=request.getParameter("radio").trim();
			String table="";
			if(radio.equals("1")) {
				table="sales";
			}else {
				table="admin";
			}
			
		}
}
