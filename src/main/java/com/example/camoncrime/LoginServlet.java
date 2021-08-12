package com.example.camoncrime;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

import static java.lang.System.out;

@WebServlet(name = "loginServlet", value = "/loginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String logemail = request.getParameter("email");
        String logpass = request.getParameter("password");

        OfficerDatabase db =  new OfficerDatabase(ConnectionPro.getConnection());
        Officer officer = db.loginOfficer(logemail ,logpass);

        if(officer!=null){
            HttpSession session = request.getSession();
            session.setAttribute("logOfficer",officer);
            response.sendRedirect("pages/dashboard.jsp");
        }else{
            out.println("user not found");
            response.sendRedirect("index.jsp");
        }

    }
}
