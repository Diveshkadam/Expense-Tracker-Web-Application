package com.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.ConfigurationUtil;
import com.entity.User;

@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String fullName = req.getParameter("fullName");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String about = req.getParameter("about");
        
        User u1 = new User(fullName, email, password, about);
        
        //System.out.println(u1);
        
        UserDao dao=new UserDao(ConfigurationUtil.getSessionFactory());
        boolean f = dao.saveUser(u1);
        
        HttpSession session=req.getSession();
        
        if (f) {
        	
        	session.setAttribute("msg", "Register Successfully");
			
        	//System.out.println("Register Successfully");
        	resp.sendRedirect("register.jsp");
		}
        else {
        	session.setAttribute("msg", "Some thing went wrong on server");
			//System.out.println("Some thing went wrong on server");
        	resp.sendRedirect("register.jsp");
			
		}
    }
}
