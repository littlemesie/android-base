package cn.hzun.sign.service;

import java.util.List;

import cn.hzun.sign.entity.Students;

/**
 * 
 * @author mesie
 * 2016年4月16日 下午4:33:17
 */
public interface StudentsService {
	/**
	 * 根据教师id获取对应的课程信息
	 * @param teacherNo
	 * @return
	 */
	public List<Students> getStudents(int teacherNo);
}
