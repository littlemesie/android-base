package cn.hzun.sign.service;

import java.util.List;
import cn.hzun.sign.entity.Teachers;

/**
 * 
 * @author mesie
 * 2016年4月13日 下午3:14:20
 */
public interface TeacherService {

	/**
	 * 根据用户名获取信息
	 * @param userName
	 * @return
	 */
//	public List<Admin> getByNameAndPwd(String userName,String userPwd);
	public List<Teachers> getByName(String name);
	
	/**
	 * 保存教师信息
	 * @param teachers
	 */
	public void save(Teachers teachers);
	
	/**
	 * 更新用户信息
	 * @param teachers
	 */
	public void update(Teachers teachers);
}
