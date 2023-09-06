package com.appointment_schedule.online_appointment_schedule_system.controller;

import com.appointment_schedule.online_appointment_schedule_system.dao.UserDao;
import com.appointment_schedule.online_appointment_schedule_system.entity.UserEntity;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static com.appointment_schedule.online_appointment_schedule_system.util.EncryptPassword.encryptPassword;


@WebServlet(name = "Login", value = "/Login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        System.out.println("password = " + password);
        System.out.println("userName = " + userName);
        String hashedPass = encryptPassword(password);
        UserEntity user = new UserEntity(userName, hashedPass);
        UserEntity login = new UserDao().getLogin(user);
        HttpSession session = request.getSession();

        if (login != null) {
            session.setAttribute("userName", login.getName());
            request.setAttribute("status", "success");
            String redirectURL;

            if (login.getType().equalsIgnoreCase("user")) {
                redirectURL = "dashboard.jsp";
            } else if (login.getType().equalsIgnoreCase("consultant")) {
                redirectURL = "consultantDashboard.jsp";
            } else {
                redirectURL = "adminDashboard.jsp";
            }

            // Redirect to the specified dashboard
            response.sendRedirect(redirectURL);
        } else {
            request.setAttribute("status", "fail");
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);
        }
    }
}