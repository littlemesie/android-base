package cn.hzun.sign.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.hzun.sign.entity.Teachers;
import cn.hzun.sign.service.AdminService;
import cn.hzun.sign.service.TeacherService;

@Controller
@RequestMapping("/sign")
public class SignController {
	
	private Logger log = Logger.getLogger(TeacherController.class);
	
	@Resource
	private TeacherService teacherService;
	
	
	@RequestMapping(value = {"/login"},method = RequestMethod.GET)
	public String login(Model model){

		return "/sign/login";
	}
	
	/**
	 * 教师登录
	 * @return
	 */
	@RequestMapping(method = RequestMethod.POST,value = "/login")
	public String login(@RequestParam(required = true) String name,@RequestParam(required = true) String pwd,
			Model model,HttpServletRequest request){
		System.out.println("------------>>>>:" + "进来了");
		List<Teachers> teachers = null;
		teachers = teacherService.getByName(name);
		System.out.println(teachers.size());
		System.out.println("密码：" + teachers.get(0).getTeacherPwd());
		if( teachers.get(0).getTeacherPwd().equals(pwd)){
			model.addAttribute("name",name);
			return "/sign/index";
		}else{
			model.addAttribute("error_msg", "密码错误");
			return "/sign/error";
		}
	}
	
	@RequestMapping(value = {"/index"},method = RequestMethod.GET)
	public String admin(Model model){

		return "/sign/index";
	}
	
	@RequestMapping(value = {"/myinfo"},method = RequestMethod.GET)
	public String mysite(Model model){

		return "/sign/myinfo";
	}
	@RequestMapping(value = {"/course"},method = RequestMethod.GET)
	public String course(Model model){

		return "/sign/course";
	}
	@RequestMapping(value = {"/checkinfo"},method = RequestMethod.GET)
	public String checkinfo(Model model){

		return "/sign/checkinfo";
	}
	@RequestMapping(value = {"/stuinfo"},method = RequestMethod.GET)
	public String stuinfo(Model model){

		return "/sign/stuinfo";
	}
	@RequestMapping(value = {"/score"},method = RequestMethod.GET)
	public String scores(Model model){

		return "/sign/score";
	}
	@RequestMapping(value = {"/checkrecord"},method = RequestMethod.GET)
	public String checkrecord(Model model){

		return "/sign/checkrecord";
	}
}
