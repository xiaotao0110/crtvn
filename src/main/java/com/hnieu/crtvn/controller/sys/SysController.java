package com.hnieu.crtvn.controller.sys;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hnieu.crtvn.service.ICourseService;
import com.hnieu.crtvn.service.IProfessionService;
import com.hnieu.crtvn.service.IStudentService;
import com.hnieu.crtvn.service.ITeacherService;

@Controller
@RequestMapping(value = "sys")
public class SysController {
	
	@Autowired
	private IProfessionService professionService;
	
	@Autowired
	public ICourseService courseService;
	
	@Autowired
	private IStudentService studentService;
	
	@Autowired
	private ITeacherService teacherService;
	
	/**
	 * 跳转到登录页面
	 */
	@RequestMapping(value = "login")
    public String loginToView(Model model){	
		model.addAttribute("msg", "");
		return "sys/login";
    }
	
	/**
	 * 首页
	 */
	@RequestMapping(value = "index")
    public String indexToView(Model model){	
		return "sys/index";
    }
	
	/**
	 * 学院信息
	 */
	@RequestMapping(value = "collegeInfo")
    public String collegeInfoToView(Model model){	
		
		model.addAttribute("professionCount", professionService.findProfessionCount());
		model.addAttribute("courseCount", courseService.findCourseCount());
		model.addAttribute("studentCount", studentService.findStudentCount());
		model.addAttribute("teacherCount", teacherService.findTeacherCount());
		
		return "sys/collegeInfo";
    }
}
