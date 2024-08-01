package com.register;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.sql.*;

@WebServlet("/FacultyRegister")
@MultipartConfig(maxFileSize = 16177215)
public class FacultyRegister extends HttpServlet {

    private String dbURL = "jdbc:mysql://localhost:3306/leavemanagement";
    private String dbUser = "root";
    private String dbPass = "root";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String empid = request.getParameter("empid");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String gender = request.getParameter("gender");
        String qualification = request.getParameter("qualification");
        String dept=request.getParameter("dept");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        InputStream inputStream = null;
        Part filePart = request.getPart("image");
        if (filePart != null) {

            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());


            inputStream = filePart.getInputStream();
        }

        Connection conn = null;
        String message = null;

        try {

           Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "INSERT INTO faculty (empid, fname, lname,email, mobile,gender,qualification,dept,username,password,aleave,image) values (?,?, ?, ?, ?,?,?,?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, empid);
            statement.setString(2, fname);
            statement.setString(3, lname); 
      statement.setString(4, email);
        statement.setString(5, mobile);
          statement.setString(6, gender);
            statement.setString(7, qualification);
            statement.setString(8,dept);
              statement.setString(9, username);
                statement.setString(10, password);
             statement.setString(11,"15");
            

            if (inputStream != null) {
                statement.setBlob(12, inputStream);
            }

            int row = statement.executeUpdate();
            if (row > 0) {

                System.out.println("image upload sucess");
                response.sendRedirect("faculty.jsp?reg= Faculty Registration success");
            } else {
                response.sendRedirect("faculty.jsp?reg= Faculty Registration Failed");

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FacultyRegister.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}