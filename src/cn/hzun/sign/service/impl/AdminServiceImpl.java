package cn.hzun.sign.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import cn.hzun.sign.dao.AdminDao;
import cn.hzun.sign.entity.Admin;
import cn.hzun.sign.service.AdminService;

/**
 * 
 * @author mesie
 * 2016年4月7日 下午3:12:40
 */
@Service("adminService")
public class AdminServiceImpl implements AdminService{

	@Resource(name = "adminDao")
	private AdminDao adminDao;
	
//	@Override
//	public List<Admin> getByNameAndPwd(String userName,String userPwd) {
//		return adminDao.getByName(userName, userPwd);
//		
//	}
	
	@Override
	public List<Admin> getByName(String userName) {
		return adminDao.getByName(userName);
		
	}

}
