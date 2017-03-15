package cn.hzun.sign.service;

import java.util.List;

import cn.hzun.sign.entity.Admin;

/**
 * 
 * @author mesie
 * 2016年4月7日 下午3:09:30
 */
public interface AdminService {

	/**
	 * 根据用户名和密码获取
	 * @param userName
	 * @return
	 */
//	public List<Admin> getByNameAndPwd(String userName,String userPwd);
	public List<Admin> getByName(String userName);
}
