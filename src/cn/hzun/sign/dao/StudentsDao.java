package cn.hzun.sign.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import cn.hzun.sign.base.BaseDao;
import cn.hzun.sign.entity.Students;
/**
 * 
 * @author mesie
 * 2016年4月16日 下午4:25:11
 */
@Repository("studentsDao")
public interface StudentsDao extends BaseDao<Students, Long>{
	
	/**
	 * 根据教师id获取对应的课程信息
	 * @param teacherNo
	 * @return
	 */
	public List<Students> getStudents(int teacherNo);
}
