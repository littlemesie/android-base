package cn.hzun.sign.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.hzun.sign.dao.TeacherDao;
import cn.hzun.sign.entity.Teachers;
import cn.hzun.sign.service.TeacherService;

/**
 * 
 * @author mesie
 * 2016年4月13日 下午3:17:53
 */
@Service("teacherService")
public class TeacherServiceImpl implements TeacherService{

	@Resource(name = "teacherDao")
	private TeacherDao teacherDao;
	
	@Override
	public List<Teachers> getByName(String name) {
		return teacherDao.getByName(name);
	}

	@Override
	public void save(Teachers teachers) {
		teacherDao.saveOrUpdate(teachers);
		
	}

	@Override
	public void update(Teachers teachers) {
		teacherDao.update(teachers);
		
	}
}
