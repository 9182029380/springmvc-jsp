package com.wipro.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.wipro.model.Student;

import javax.validation.Valid;

@Controller
public class StudentController {

    @GetMapping("/input")
    public String showForm(Model model) {
        model.addAttribute("student", new Student());
        return "studentInput";
    }

    @PostMapping("/output")
    public String submitForm(@Valid @ModelAttribute("student") Student student, BindingResult result) {
        if (result.hasErrors()) {
            return "studentInput";
        }
        return "studentOutput";
    }
}
