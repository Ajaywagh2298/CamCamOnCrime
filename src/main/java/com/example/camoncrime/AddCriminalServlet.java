package com.example.camoncrime;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.InputStream;

@MultipartConfig
@WebServlet(name = "AddCriminalServlet", urlPatterns = {"/AddCriminalServlet"})
public class AddCriminalServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        InputStream photo = null;

        try {
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String contact = request.getParameter("contact");
            String birthDate = request.getParameter("birthDate");
            String gender = request.getParameter("gender");
            String adharId = request.getParameter("adharId");
            String identityMark = request.getParameter("identityMark");

            Part file = request.getPart("photo");
            photo = file.getInputStream();

            //make user object
            Criminal criminalModel = new Criminal(name, address, contact, photo, birthDate, gender, adharId, identityMark);

            System.out.println(criminalModel);
            //create a database model
            CriminalDatabase regUser = new CriminalDatabase(ConnectionPro.getConnection());
            if (regUser.saveCriminal(criminalModel)) {
                response.sendRedirect("pages/dashboard.jsp");
            } else {
                String errorMessage = "Record already registered";
                HttpSession regSession = request.getSession();
                regSession.setAttribute("RegError", errorMessage);
                response.sendRedirect("pages/register.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (photo != null) photo.close();
        }


    }
}
