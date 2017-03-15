package cn.hzun.sign.controller;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.zxing.WriterException;

import cn.hzun.sign.entity.Admin;
import cn.hzun.sign.entity.Courses;
import cn.hzun.sign.entity.Students;
import cn.hzun.sign.entity.Teachers;
import cn.hzun.sign.service.AdminService;
import cn.hzun.sign.service.CoursesService;
import cn.hzun.sign.service.StudentsService;
import cn.hzun.sign.service.TeacherService;
import cn.hzun.sign.util.CodeUtil;
import cn.hzun.sign.util.MatrixToImageWriterUtil;
import cn.hzun.sign.util.StringUtil;
import cn.hzun.sign.util.Util;

/**
 * 教师
 * @author mesie
 * 2016年4月7日 下午2:23:30
 */
@Controller
@RequestMapping("/teacher")
public class TeacherController {
	
	private Logger log = Logger.getLogger(TeacherController.class);
	
	@Resource
	private AdminService adminService;
	
	@Resource
	private TeacherService teacherService;
	
	@Resource
	private CoursesService coursesService;
	
	@Resource
	private StudentsService studentsService;
	
	/**
	 * get方法登录
	 * @param model
	 * @return
	 */
	@RequestMapping(value = {"/login"},method = RequestMethod.GET)
	public String login(Model model){

		return "/teacher/login";
	}
	
	/**
	 * 教师登录
	 * @param name
	 * @param pwd
	 * @param model
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(method = RequestMethod.POST,value = "/login")
	public String login(@RequestParam(required = true) String name,@RequestParam(required = true) String pwd,@RequestParam(required = true) String login,
			Model model,HttpServletRequest request,HttpSession session){
		System.out.println("------------>>>>:" + "进来了");
//		//判断是否为管理员还是老师
//		if(login.equals("teacher")){
//			List<Teachers> teachers = null;
//			teachers = teacherService.getByName(name);
//			
//			if( teachers.get(0).getTeacherPwd().equals(pwd)){
//				//将用户保存到session
//				session.setAttribute("teachers", teachers);
////				model.addAttribute("teacher", teachers);
//				return "/teacher/index";
//			}else{
//				model.addAttribute("error_msg", "密码错误");
//				return "/teacher/error";
//			}
//			
//		}else{
//			List<Admin> admin = null;
//			admin = adminService.getByName(name);
//			
//			if( admin.get(0).getUserPwd().equals(pwd)){
//				//将用户保存到session
//				session.setAttribute("teachers", admin);
//				return "/admin/index";
//			}else{
//				model.addAttribute("error_msg", "密码错误");
//				return "/admin/error";
//			}
//		}
		//首先判断输入用户是否为空
		if(!(StringUtil.isEmpty(name)) && !(StringUtil.isEmpty(pwd))){
			//判断是否为管理员还是老师
			if(login.equals("teacher")){
				List<Teachers> teachers = null;
				teachers = teacherService.getByName(name);
				
				if( teachers.get(0).getTeacherPwd().equals(pwd)){
					//将用户保存到session
					session.setAttribute("teachers", teachers);
//					model.addAttribute("teacher", teachers);
					return "/teacher/index";
				}else{
					model.addAttribute("error_msg", "密码错误");
					return "/teacher/login";
				}
				
			}else{
				List<Admin> admin = null;
				admin = adminService.getByName(name);
				
				if( admin.get(0).getUserPwd().equals(pwd)){
					//将用户保存到session
					session.setAttribute("teachers", admin);
					return "/admin/index";
				}else{
					model.addAttribute("error_msg", "密码错误");
					return "/admin/error";
				}
			}
			
		}else{
			return "redirect:/teacher/login";
		}
		
		
	}
	
	/**
	 * 用户注册
	 * @param userName
	 * @param userPwd
	 * @param model
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(method = RequestMethod.POST,value = "/register")
	public String register(@RequestParam(required = true) String userName,@RequestParam(required = true) String userPwd,
			Model model,HttpServletRequest request,HttpSession session){
		System.out.println("------------>>>>:" + "register进来了");
		Teachers teacher = new Teachers();
		//判断用户信息是否存在
		List<Teachers> teachers = null;
		teachers = teacherService.getByName(userName);
		if(teachers.size() > 0){
			model.addAttribute("info_exist", "用户信息已存在,请直接登录。");
			return "/teacher/login";
		}else{
			//保存用户信息
			teacher.setTeacherNo(Util.randId());
			teacher.setTeacherName(userName);
			teacher.setTeacherPwd(userPwd);
			teacher.setTeacherCollege("");
			teacher.setTeacherAcademy("");
			teacherService.save(teacher);
			teachers = teacherService.getByName(userName);
			session.setAttribute("teachers", teachers);
			return "/teacher/index";
		}
		
		
		
	}
	
	/**
	 * 主页信息
	 * @param model
	 * @return
	 */
	@RequestMapping(value = {"/index"},method = RequestMethod.GET)
	public String admin(Model model){

		return "/teacher/index";
	}
	
	/**
	 * 获取当前教师信息
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = {"/mysite"},method = RequestMethod.GET)
	public String mysite(Model model,HttpSession session){
		//获取当前教师信息
		@SuppressWarnings("unchecked")
		List<Teachers> teacher = (List<Teachers>)session.getAttribute("teachers");
		model.addAttribute("teacher", teacher);
		return "/teacher/mysite";
	}
	
	/**
	 * 保存修改的教师信息
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = {"/mysite"},method = RequestMethod.POST)
	public String infoSave(@RequestParam(required = true) String teacherName,@RequestParam(required = true) String teacherPwd,@RequestParam(required = true) String teacherCollege,@RequestParam(required = true) String teacherAcademy,Model model,HttpSession session){
		Teachers teacher = new Teachers();
		@SuppressWarnings("unchecked")
		List<Teachers> teachers = (List<Teachers>)session.getAttribute("teachers");
		//获取id
		int teacherId = teachers.get(0).getTeacherNo();
		teacher.setTeacherNo(teacherId);
		teacher.setTeacherName(StringUtil.isEmpty(teacherName) ? teachers.get(0).getTeacherName() : teacherName);
		teacher.setTeacherPwd(StringUtil.isEmpty(teacherPwd) ? teachers.get(0).getTeacherPwd() : teacherPwd);
		teacher.setTeacherCollege(StringUtil.isEmpty(teacherCollege) ? teachers.get(0).getTeacherCollege() : teacherCollege);
		teacher.setTeacherAcademy(StringUtil.isEmpty(teacherAcademy) ? teachers.get(0).getTeacherAcademy() : teacherAcademy);
		teacherService.update(teacher);
		teachers = teacherService.getByName(teacherName);
		session.setAttribute("teachers", teachers);
		return "redirect:/teacher/mysite";
	}
	
	/**
	 * 获取课程信息
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = {"/course"},method = RequestMethod.GET)
	public String course(Model model,HttpSession session){
		//获取当前教师的id
		@SuppressWarnings("unchecked")
		List<Teachers> teachers = (List<Teachers>)session.getAttribute("teachers");
		int teacherId = teachers.get(0).getTeacherNo();
		
		//获取当前教师课程信息
		List<Courses> courses = null;
		courses = coursesService.getCourses(teacherId);
		model.addAttribute("courses", courses);
		
		System.out.println("---------->>>>" + courses.size());
		System.out.println("courses:" + courses.get(0).getCourseID());
		return "/teacher/course";
	}
	
	@RequestMapping(value = {"/checkinfo"},method = RequestMethod.GET)
	public String checkinfo(Model model){

		return "/teacher/checkinfo";
	}
	
	/**
	 * 获取学生信息
	 * @param model
	 * @return
	 */
	@RequestMapping(value = {"/stuinfo"},method = RequestMethod.GET)
	public String stuinfo(Model model,HttpSession session){
		//获取当前教师的id
		@SuppressWarnings("unchecked")
		List<Teachers> teachers = (List<Teachers>)session.getAttribute("teachers");
		int teacherId = teachers.get(0).getTeacherNo();
		
		//获取当前老师所有学生信息
		List<Students> students = null;
		students = studentsService.getStudents(teacherId);
		model.addAttribute("students", students);
		return "/teacher/stuinfo";
	}
	
	@RequestMapping(value = {"/scores"},method = RequestMethod.GET)
	public String scores(Model model){

		return "/teacher/scores";
	}
	
	/**
	 * 退出登录
	 * @param model
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(value = {"/quit"},method = RequestMethod.GET)
	public String quit(Model model,HttpServletRequest request,HttpSession session){
		//清除session
		session.invalidate();
		return "redirect:/teacher/login";
	}
	
	/**
	 * 创建二维码
	 * @param model
	 * @param courseId
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping(value = { "/course" },method = RequestMethod.POST)
	public void createCode(Model model,@RequestParam(required = true) String courseId,HttpServletResponse response,HttpServletRequest request) throws IOException{
		System.out.println("------------>>>>:" + "createCode进来了");
		System.out.println("courseId————>" + courseId);
//		try {
//
//            int iWidth = 300;
//            int iHeight = 300;
//            
//            MatrixToImageWriterUtil.createRqCode(courseId, iWidth, iHeight, response.getOutputStream());
//        
//        } catch (Exception e) {
//
//            log.error(String.format("生成二维码失败： url： %s", courseId), e);
//            
//        }
		try {
			CodeUtil.genGR(courseId, response.getOutputStream());
		} catch (WriterException e) {
			e.printStackTrace();
		}
//		return "redirect:/teacher/course";
	}

}
