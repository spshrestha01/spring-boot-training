package com.vastika.training.java.cms;

import com.vastika.training.java.cms.model.Student;
import com.vastika.training.java.cms.repositories.CrudRepository;
import com.vastika.training.java.cms.repositories.impl.StudentRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.jws.WebParam;
import java.util.List;

@Controller
public class StudentController {

    CrudRepository<Student> studentRepository;

    public StudentController(){
        this.studentRepository = new StudentRepository();
    }

    @GetMapping({"/", "/index"})
    public String index(Model model) {
        List<Student> students = this.studentRepository.findAll();
        model.addAttribute("students", students);
        return "index";
    }

    @RequestMapping(value = "/info", method = RequestMethod.GET)
    public String getInfo(Model model, @RequestParam("studentId") int id) {
        Student student = this.studentRepository.findById(id);
        model.addAttribute("student", student);
        return "info";
    }

    @RequestMapping(value="/edit/{id}", method = RequestMethod.GET)
    public String editInfo(Model model, @PathVariable("id") int id){
        Student student = this.studentRepository.findById(id);
        model.addAttribute("student", student);
        return "edit";
    }

    @RequestMapping(value="/update", method = RequestMethod.GET)
    public String updateInfo(Model model, @RequestParam("studentId") int id, @RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName, @RequestParam("gpa") double gpa){
        Student student = new Student(id, firstName, lastName, gpa);
        boolean update = this.studentRepository.update(student);
        if(update){
            System.out.println("Record Updated!!!!!");
        }else{
            System.out.println("Not Updated ");
        }
        index(model);
        return "redirect:/index";
    }

    @RequestMapping(value="/delete/{id}", method = RequestMethod.GET)
    public String delete(Model model, @PathVariable("id") int id){
        boolean update = this.studentRepository.deleteById(id);
        if(update){
            System.out.println("Record Deleted!!!!!");
        }else{
            System.out.println("Not Deleted ");
        }
        index(model);
        return "redirect:/index";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.GET)
    public String insert(){

        return "insert";
    }

    @RequestMapping(value="/add", method = RequestMethod.GET)
    public String addInfo(Model model, @RequestParam("studentId") int id, @RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName, @RequestParam("gpa") double gpa){
        Student student = new Student(id, firstName, lastName, gpa);
        this.studentRepository.insert(student);
        index(model);
        return "redirect:/index";
    }

}
