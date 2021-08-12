package com.example.camoncrime;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

import static java.lang.System.out;

@WebServlet(name = "EditServlet", urlPatterns  = {"/EditServlet"})
public class EditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("oid"));
        String officer_id = request.getParameter("officer_id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String city = request.getParameter("city");
        String district = request.getParameter("district");
        String post_code = request.getParameter("post_code");

        Officer officer = new Officer(id, officer_id,name,email,username,password,city,district,post_code);
        out.println(officer);
        try{
            OfficerDatabase db  = new OfficerDatabase(ConnectionPro.getConnection());
            if(db.editOfficer(officer)){
                response.sendRedirect("pages/dashboard.jsp");
            }else{
                out.print("wrong credential");
                response.sendRedirect("pages/edit_profile.jsp");
            }

        }catch(Exception e){
            e.printStackTrace();
        }

    }
}
