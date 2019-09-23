package org.com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.Dao.RegisterDao;


@WebServlet("/register")
public class Registration extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String pass = request.getParameter("pass");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        
        RegisterDao dao= new RegisterDao();

        if (dao.check(name,pass,email,contact)) 
        {
        HttpSession session=request.getSession();
        session.setAttribute("name", name);
            response.sendRedirect("Login.jsp"); 
        }
      
        
    }

}   