package com.example.camoncrime;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@MultipartConfig
@WebServlet(name = "AddCaseServlet", urlPatterns = {"/AddCaseServlet"})
public class AddCaseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        byte[] crimePhoto1 = null;
        byte[] crimePhoto2 = null;
        byte[] crimePhoto3 = null;
        byte[] crimePhoto4 = null;
        byte[] crimeVideo = null;
        try {
            String caseNumber = request.getParameter("caseNumber");
            String caseName = request.getParameter("caseName");
            String crimeType = request.getParameter("crimeType");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
            String crimeDetails = request.getParameter("crimeDetails");
            String suspectivePersonName = request.getParameter("suspectivePersonName");
            String address = request.getParameter("address");
            String witness = request.getParameter("witness");

            Part file1 = request.getPart("crimePhoto1");
            System.out.println(">>>>>>>>>>>>>>>>>>>>>.file names");
            System.out.println(file1.getName());
            System.out.println(file1.getSubmittedFileName());
            Part file2 = request.getPart("crimePhoto2");
            Part file3 = request.getPart("crimePhoto3");
            Part file4 = request.getPart("crimePhoto4");
            Part file5 = request.getPart("crimeVideo");

            crimePhoto1 = file1.getInputStream().readAllBytes();
            crimePhoto2 = file2.getInputStream().readAllBytes();
            crimePhoto3 = file3.getInputStream().readAllBytes();
            crimePhoto4 = file4.getInputStream().readAllBytes();
            crimeVideo = file5.getInputStream().readAllBytes();


            //make user object
            Crime crimeModel = new Crime(caseNumber, caseName,crimeType,date,time,crimeDetails,suspectivePersonName,address,witness,crimePhoto1,crimePhoto2,crimePhoto3,crimePhoto4,crimeVideo);

            System.out.println(crimeModel);
            //create a database model
            CrimeDatabase regUser = new CrimeDatabase(ConnectionPro.getConnection());
            if (regUser.saveCrime(crimeModel)) {
                response.sendRedirect("pages/dashboard.jsp");
            } else {
                String errorMessage = "Record already registered";
                HttpSession regSession = request.getSession();
                regSession.setAttribute("RegError", errorMessage);
                response.sendRedirect("pages/add_case_data.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
