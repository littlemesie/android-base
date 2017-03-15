package cn.hzun.sign.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import cn.hzun.sign.base.BaseHibernateDao;
import cn.hzun.sign.dao.CoursesDao;
import cn.hzun.sign.entity.Courses;

/**
 * 
 * @author mesie
 * 2016年4月16日 上午11:13:17
 */
@SuppressWarnings("all")
@Repository("coursesDao")
public class CoursesDaoImpl extends BaseHibernateDao implements CoursesDao{

	@Override
	public Courses load(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Courses get(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Courses> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String save(Courses entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void persist(Courses entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void saveOrUpdate(Courses entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void flush() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Courses> getCourses(int teacherNo) {
		Session session = getSession();
		String hql = "select c from Courses c join c.teachers t where t.teacherNo = ?";
		Query query = session.createQuery(hql);
		query.setInteger(0, teacherNo);
		List<Courses> list = query.list();
		return list;
	}

}
