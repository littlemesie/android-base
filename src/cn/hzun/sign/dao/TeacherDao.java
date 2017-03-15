package cn.hzun.sign.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import cn.hzun.sign.base.BaseDao;
import cn.hzun.sign.entity.Teachers;

/**
 * 
 * @author mesie
 * 2016年4月13日 下午3:02:10
 */
@Repository("teacherDao")
public interface TeacherDao extends BaseDao<Teachers, Long>{

	/**
	 * 根据用户名获取用户
	 * @param name
	 * @return
	 */
//	public List<Admin> getByName(String name,String pwd);
	
	public List<Teachers> getByName(String name);
	
	/**
	 * 根据教师no获取课程id
	 * @param teacherNo
	 * @return
	 */
	public List<String> getCoursesId(int teacherNo);
	
	/**
	 * 更新用户信息
	 * 所有字段都更新
	 * @param teachers
	 */
	public void update(Teachers teachers);
}
