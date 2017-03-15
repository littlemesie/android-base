package cn.hzun.sign.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import cn.hzun.sign.base.BaseDao;
import cn.hzun.sign.entity.Courses;
/**
 * 
 * @author mesie
 * 2016年4月16日 上午11:12:04
 */
@Repository("coursesDao")
public interface CoursesDao extends BaseDao<Courses, String>{

	/**
	 * 根据教师id获取对应的课程信息
	 * @param teacherNo
	 * @return
	 */
	public List<Courses> getCourses(int teacherNo);
}
