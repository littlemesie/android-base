package cn.hzun.sign.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.hzun.sign.dao.StudentsDao;
import cn.hzun.sign.entity.Students;
import cn.hzun.sign.service.StudentsService;

/**
 * 
 * @author mesie
 * 2016年4月16日 下午4:34:25
 */
@Service("studentsService")
public class StudentsServiceImpl implements StudentsService{
	
	@Resource(name = "studentsDao")
	private StudentsDao studentsDao;

	@Override
	public List<Students> getStudents(int teacherNo) {
		return studentsDao.getStudents(teacherNo);
	}

}
