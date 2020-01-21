package org.romani.spring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@Controller
@RequestMapping("/jdbc")
public class JDBCTestController {

    @RequestMapping("/showTestJDBCPage")
    public String showTestJDBCPage(Model model) throws ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        String jdbcURL = "jdbc:mysql://localhost:3306/hb_student_tracker?useSSL=false&serverTimezone=UTC";
        String user = "hbstudent";
        String pass = "hbstudent";

        try {
            model.addAttribute("connDB" , "Connecting to database: " + jdbcURL);

            Connection connection = DriverManager.getConnection(jdbcURL , user , pass);

            model.addAttribute("connSuccess" , "Connection successful!!!");
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "jdbc-test-page";
    }
}
