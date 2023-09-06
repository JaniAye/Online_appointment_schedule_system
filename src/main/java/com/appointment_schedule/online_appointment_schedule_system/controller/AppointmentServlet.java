package com.appointment_schedule.online_appointment_schedule_system.controller;


import com.appointment_schedule.online_appointment_schedule_system.dao.AppointmentDao;
import com.appointment_schedule.online_appointment_schedule_system.dao.UserDao;
import com.appointment_schedule.online_appointment_schedule_system.entity.AppointmentEntity;
import com.appointment_schedule.online_appointment_schedule_system.entity.UserEntity;
import com.google.gson.Gson;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.appointment_schedule.online_appointment_schedule_system.util.EncryptPassword.encryptPassword;

@WebServlet(name = "Appointment", value = "/Appointment")
public class AppointmentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private AppointmentDao dao;

    public void init() {
        dao = new AppointmentDao();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, Object> responseObject = new HashMap<>();
        Gson gson = new Gson();
        response.setContentType("application/json");

        String userName = request.getParameter("userName");
        String category = request.getParameter("category");
        String schedule_Date = request.getParameter("date");
        String slot = request.getParameter("slot");
        String consult = request.getParameter("consult");
        String status = request.getParameter("status");

        if (category == null || schedule_Date == null || slot == null || consult == null || status == null) {
            responseObject.put("result", "empty");
        } else {

            try {

                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                Date date = new Date(dateFormat.parse(schedule_Date).getTime());

                AppointmentEntity appointment = new AppointmentEntity(userName,category,date,slot,consult, status);
                dao.saveAppointment(appointment);





                responseObject.put("result", "success");
            } catch (ParseException e) {
                responseObject.put("result", "error");
                responseObject.put("message", "Failed to parse date.");
                // You should log the exception for debugging purposes
                e.printStackTrace();
            }
        }

        String jsonResponse = gson.toJson(responseObject);
        response.getWriter().write(jsonResponse);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    private void listUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<UserEntity> listUser = dao.getAllAppointment();
        request.setAttribute("listUser", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        UserEntity existingUser = dao.getAppointment(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        request.setAttribute("user", existingUser);
        dispatcher.forward(request, response);

    }



    private void updateUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");

        AppointmentEntity appointment = new AppointmentEntity();
        dao.updateAppointment(appointment);

    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        dao.deleteAppointment(id);
        response.sendRedirect("list");
    }

}