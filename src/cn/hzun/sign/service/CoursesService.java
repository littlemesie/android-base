package cn.hzun.sign.service;

import java.util.List;

import cn.hzun.sign.entity.Courses;

/**
 * 
 * @author mesie
 * 2016年4月16日 上午11:14:05
 */
public interface CoursesService {

	/**
	 * 根据教师id获取课程信息
	 * @param teacherNo
	 * @return
	 */
	public List<Courses> getCourses(int teacherNo);
}
