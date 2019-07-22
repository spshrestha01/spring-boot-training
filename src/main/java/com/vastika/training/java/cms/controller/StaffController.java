package com.vastika.training.java.cms.controller;


import com.vastika.training.java.cms.models.Staff;
import com.vastika.training.java.cms.repositories.StaffRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class StaffController {

    @Autowired
    StaffRepository staffRepository;

    @RequestMapping(value = "/staffs", method = RequestMethod.GET)
    public String index(Model model) {
        List<Staff> staffs = this.staffRepository.findAll();
        model.addAttribute("staffs", staffs);
        return "staffs";
    }

    @RequestMapping(value = "/staffs/info", method = RequestMethod.GET)
    public String getInfo(Model model, @RequestParam("staffId") int id) {
        Staff staff = this.staffRepository.getOne(id);
        model.addAttribute("staff", staff);
        return "staffInfo";
    }

    @RequestMapping(value = "/staffs/{id}/edit", method = RequestMethod.GET)
    public String getUpdateForm(Model model, @PathVariable("id") int id) {
        Staff staff = this.staffRepository.getOne(id);
        model.addAttribute("formType", "Update");
        model.addAttribute("staff", staff);
        return "staffForm";
    }

    @RequestMapping(value = "/staffs/add", method = RequestMethod.GET)
    public String getAddForm(Model model) {
        Staff staff = new Staff();
        model.addAttribute("formType", "Add");
        model.addAttribute("staff", staff);
        return "staffForm";
    }

    @RequestMapping(value = "/staffs", method = RequestMethod.POST)
    public String upsertStaff(@ModelAttribute("staff") Staff staff) {
        this.staffRepository.save(staff);
        return "redirect:/staffs";
    }

    @RequestMapping(value = "/staffs/{id}/delete", method = RequestMethod.GET)
    public String deleteStaffRecord(@PathVariable int id) {
        this.staffRepository.deleteById(id);
        return "redirect:/staffs";
    }

}
