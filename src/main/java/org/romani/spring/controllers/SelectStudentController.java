package org.romani.spring.controllers;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.romani.spring.entities.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/selectStudent")
public class SelectStudentController {

    // need a controller method to show the initial HTML form
    @RequestMapping("/showSelectStudentForm")
    public String showStudentForm(Model model) {
        // create session factory
        SessionFactory sessionFactory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(Student.class)
                .buildSessionFactory();

        // create session
        Session session = sessionFactory.getCurrentSession();
        try {
            session.beginTransaction();

            // retrieve all students
            List<Student> students = session.createQuery("from Student ").getResultList();

            // commit the transaction
            session.getTransaction().commit();

            ArrayList<String> studentNames = new ArrayList<>();

            for (Student student : students) {
                studentNames.add(student.getLastName());
            }

            model.addAttribute("studentNames" , studentNames);

        } finally {
            sessionFactory.close();
        }

        model.addAttribute("student" , new Student());
        return "select-student-form";
    }

    // need a controller method to process the HTML form
    @RequestMapping("/getSelectedStudent")
    public String getSelectedStudent(@ModelAttribute("student")Student studentName , Model model) {
        SessionFactory sessionFactory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(Student.class)
                .buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            session.beginTransaction();

            List<Student> students = session.createQuery("from Student s where  s.lastName = '" + studentName.getLastName()+ "'").getResultList() ;
            model.addAttribute("student" , students.get(0));

            session.getTransaction().commit();


        } finally {
            sessionFactory.close();
        }

        return "get-student";
    }
}
