package com.example.camoncrime;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/jsp");
        String officer_id = request.getParameter("officer_id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String city = request.getParameter("city");
        String district = request.getParameter("district");
        String post_code = request.getParameter("post_code");
//make user object

        Officer OfficerModel = new Officer(officer_id,name, email,username, password,city,district,post_code);

//create a database model
        OfficerDatabase regUser = new OfficerDatabase(ConnectionPro.getConnection());
        if (regUser.saveOfficer(OfficerModel)) {
            response.sendRedirect("pages/dashboard.jsp");
        } else {
            String errorMessage = "Officer Available";
            HttpSession regSession = request.getSession();
            regSession.setAttribute("RegError", errorMessage);
            response.sendRedirect("register.jsp");
        }
    }
}
