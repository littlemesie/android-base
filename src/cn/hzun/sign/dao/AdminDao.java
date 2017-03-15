package cn.hzun.sign.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.hzun.sign.base.BaseDao;
import cn.hzun.sign.entity.Admin;
/**
 * 
 * @author mesie
 * 2016年4月8日 下午6:29:00
 */
@Repository("adminDao")
public interface AdminDao extends BaseDao<Admin, Long>{
	/**
	 * 根据用户名获取用户
	 * @param name
	 * @return
	 */
//	public List<Admin> getByName(String name,String pwd);
	
	public List<Admin> getByName(String name);
}
