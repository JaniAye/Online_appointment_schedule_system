package com.appointment_schedule.online_appointment_schedule_system.controller;


import com.appointment_schedule.online_appointment_schedule_system.dao.UserDao;
import com.appointment_schedule.online_appointment_schedule_system.entity.UserEntity;
import com.google.gson.Gson;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.appointment_schedule.online_appointment_schedule_system.util.EncryptPassword.encryptPassword;

@WebServlet(name = "User", value = "/User")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao userDao;

    public void init() {
        userDao = new UserDao();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, Object> responseObject = new HashMap<>();
        Gson gson = new Gson();
        response.setContentType("application/json");

        String emilOrphn = request.getParameter("emailOrPhone");
        String name = request.getParameter("name");
        String nic = request.getParameter("nic");
        String dob = request.getParameter("dob");
        String password = request.getParameter("password");
        String dateString = "2023-09-01";

        if (emilOrphn==null || name==null || nic==null || dob==null || password==null){
            responseObject.put("result", "empty");
            String jsonResponse = gson.toJson(responseObject);
            response.getWriter().write(jsonResponse);
        }else {
            String hashedPass =encryptPassword(password);

            RequestDispatcher  dispatcher=request.getRequestDispatcher("index.jsp");

            try {
                insertUser(request, response);

            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ParseException e) {
                throw new RuntimeException(e);
            }

            responseObject.put("result", "success");

            String jsonResponse = gson.toJson(responseObject);
            response.getWriter().write(jsonResponse);

        }
        // doGet(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Map<String, Object> responseObject = new HashMap<>();
        Gson gson = new Gson();
        response.setContentType("application/json");

        String category = request.getParameter("category");
        String date = request.getParameter("date");
        String slot = request.getParameter("slot");
        String getType = request.getParameter("getType");


        UserEntity user = new UserEntity(category);
        UserEntity userName = userDao.getUserNic(user);

        responseObject.put("result", "success");
        responseObject.put("userNameCons", userName.getName());
        String jsonResponse = gson.toJson(responseObject);

        response.getWriter().write(jsonResponse);



    }

    private void listUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<UserEntity> listUser = userDao.getAllUser();
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
        UserEntity existingUser = userDao.getUser(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        request.setAttribute("user", existingUser);
        dispatcher.forward(request, response);

    }

    private void insertUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ParseException {
        String emilOrphn = request.getParameter("emailOrPhone");
        String name = request.getParameter("name");
        String nic = request.getParameter("nic");
        String dob = request.getParameter("dob");
        String password = request.getParameter("password");
        String dateString = "2023-09-01";

        // Parse the string to a Date
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        System.out.println(emilOrphn+" : "+name+" ---- "+nic+"  / "+dob+ " pa "+password);;
        Date date = new Date(dateFormat.parse(dateString).getTime());
        String hashedPass =encryptPassword(password);
        UserEntity newUser = new UserEntity(nic,name,date,"user",emilOrphn,hashedPass,"");
        userDao.saveUser(newUser);
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");

        UserEntity user = new UserEntity();
        userDao.updateUser(user);
        response.sendRedirect("list");
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        userDao.deleteUser(id);
        response.sendRedirect("list");
    }

}