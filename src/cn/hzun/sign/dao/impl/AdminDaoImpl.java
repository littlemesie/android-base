package cn.hzun.sign.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.hzun.sign.base.BaseHibernateDao;
import cn.hzun.sign.dao.AdminDao;
import cn.hzun.sign.entity.Admin;

/**
 * 
 * @author mesie
 * 2016年4月7日 下午2:43:26
 */
@SuppressWarnings("all")
@Repository("adminDao")
public class AdminDaoImpl extends BaseHibernateDao implements AdminDao{

	@Override
	public Admin load(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Admin get(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Admin> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Long save(Admin entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void persist(Admin entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void saveOrUpdate(Admin entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void flush() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Admin> getByName(String name) {
		
		Session session = getSession();
		String hql = "from Admin a where a.userName = ? ";
		Query query = session.createQuery(hql);
		query.setString(0, name);
//		query.setString(1, pwd);
		List<Admin> list = query.list();
		return list;
	}

}
