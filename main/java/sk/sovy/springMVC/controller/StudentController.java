package sk.sovy.springMVC.controller;


import sk.sovy.springMVC.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

    @RequestMapping("/showForm")
    public String showForm(Model theModel){

        // create a student object
        Student theStudent = new Student();

        // add student object to the model
        theModel.addAttribute("student",theStudent);

        return "student-form";
    }

    @RequestMapping("/processForm")
    public String processForm(@ModelAttribute("student") Student student){

        // log the input data
        System.out.println("student"+student.getFirstName()+student.getLastName());
        return "student-confirmation";
    }
}
