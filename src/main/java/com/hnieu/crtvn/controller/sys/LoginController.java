package com.hnieu.crtvn.controller.sys;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hnieu.crtvn.entity.Academician;
import com.hnieu.crtvn.entity.Admin;
import com.hnieu.crtvn.entity.Course;
import com.hnieu.crtvn.service.IAcademicianService;
import com.hnieu.crtvn.service.IAdminService;
import com.hnieu.crtvn.util.CaptchaUtil;

@Controller
@RequestMapping(value = "login")
public class LoginController {
	
	private final String SESSION_SECURITY_CODE = "imageCode";
	
	@Autowired
	public IAdminService adminService;

	@Autowired
	public IAcademicianService academicianService;

	@Autowired
	private  HttpServletRequest request;
	
	/**
	 * 管理员登录验证
	 */
	@RequestMapping(value = "adminLogin")
	public String login(Admin admin, String code,final RedirectAttributes redirectAttributes) {
		HttpSession session = request.getSession();			
		
		String imageCode = (String)session.getAttribute(SESSION_SECURITY_CODE);
		if(code == null || code.length()==0){
			redirectAttributes.addFlashAttribute("code_msg","验证码错误！");
			return "redirect:/sys/login";
		}else{
			if(code.toUpperCase().equals(imageCode.toUpperCase())){
				Admin adminBean = adminService.findAdminByName(admin);
				if (adminBean != null) {			
					session.setAttribute("admin", adminBean);			
					return "redirect:/admin/adminInfo";
				}
				redirectAttributes.addFlashAttribute("code_msg","密码或账号错误！");
				return "redirect:/sys/login";
			}else{
				redirectAttributes.addFlashAttribute("code_msg","验证码错误！");
				return "redirect:/sys/login";				
			}
		}	
	}

	/**
	 * 教务人员登录验证
	 */
	@RequestMapping(value = "academicianLogin")
	public String login(Academician academician,String code, Course course,final RedirectAttributes redirectAttributes) {
				
		HttpSession session = request.getSession();			
		
		String imageCode = (String)session.getAttribute(SESSION_SECURITY_CODE);
		if(code == null || code.length()==0){
			redirectAttributes.addFlashAttribute("code_msg","验证码错误！");
			return "redirect:/sys/login";
		}else{
			if(code.toUpperCase().equals(imageCode.toUpperCase())){
				Academician academicianBean = academicianService.findAcademicianByName(academician);
				if (academicianBean != null) {
					//记录时间
					session.setAttribute("course", course);

					session.setAttribute("academician", academicianBean);
					redirectAttributes.addFlashAttribute("adminName",academicianBean.getName());
					return "redirect:/sys/index";
				}
				redirectAttributes.addFlashAttribute("code_msg","密码或账号错误！");
				return "redirect:/sys/login";
				
			}else{
				redirectAttributes.addFlashAttribute("code_msg","验证码错误！");
				return "redirect:/sys/login";	
			}
		}		

	}

	
	/**
	 * 验证码
	 */
	@RequestMapping(value = "verificationCode")
	@ResponseBody
	public void verificationCode(HttpServletRequest req, HttpServletResponse response) {
		
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		String code = CaptchaUtil.drawImg(output);
		// 将四位数字的验证码保存到Session中。
		HttpSession session = req.getSession();
		session.setAttribute(SESSION_SECURITY_CODE, code);

		try {
			// 将图像输出到Servlet输出流中
			ServletOutputStream out = response.getOutputStream();
			output.writeTo(out);
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
