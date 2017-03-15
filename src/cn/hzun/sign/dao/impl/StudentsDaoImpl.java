package cn.hzun.sign.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import cn.hzun.sign.base.BaseHibernateDao;
import cn.hzun.sign.dao.StudentsDao;
import cn.hzun.sign.entity.Students;

/**
 * 
 * @author mesie
 * 2016年4月16日 下午4:29:15
 */
@SuppressWarnings("all")
@Repository("studentsDao")
public class StudentsDaoImpl extends BaseHibernateDao implements StudentsDao{

	@Override
	public Students load(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Students get(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Students> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Long save(Students entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void persist(Students entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void saveOrUpdate(Students entity) {
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
	public List<Students> getStudents(int teacherNo) {
		Session session = getSession();
		String hql = "select s from Students s join s.teachers t where t.teacherNo = ?";
		Query query = session.createQuery(hql);
		query.setInteger(0, teacherNo);
		List<Students> list = query.list();
		return list;
	}

}
