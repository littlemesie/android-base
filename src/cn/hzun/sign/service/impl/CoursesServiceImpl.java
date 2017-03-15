package cn.hzun.sign.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.hzun.sign.dao.CoursesDao;
import cn.hzun.sign.entity.Courses;
import cn.hzun.sign.service.CoursesService;

/**
 * 
 * @author mesie
 * 2016年4月16日 上午11:14:31
 */
@Service("coursesService")
public class CoursesServiceImpl implements CoursesService{

	@Resource(name = "coursesDao")
	private CoursesDao coursesDao;
	
	@Override
	public List<Courses> getCourses(int teacherNo) {
		
		return coursesDao.getCourses(teacherNo);
	}

}
