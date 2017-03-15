package cn.hzun.sign.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import cn.hzun.sign.base.BaseHibernateDao;
import cn.hzun.sign.dao.TeacherDao;
import cn.hzun.sign.entity.Teachers;

/**
 * 
 * @author mesie
 * 2016年4月13日 下午3:09:18
 */
@SuppressWarnings("all")
@Repository("teacherDao")
public class TeacherDaoImpl extends BaseHibernateDao implements TeacherDao{

	@Override
	public List<Teachers> getByName(String name) {
		Session session = getSession();
		String hql = "from Teachers t where t.teacherName = ? ";
		Query query = session.createQuery(hql);
		query.setString(0, name);
//		query.setString(1, pwd);
		List<Teachers> list = query.list();
		return list;
	}

	@Override
	public Teachers load(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Teachers get(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Teachers> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Long save(Teachers entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void persist(Teachers entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void saveOrUpdate(Teachers entity) {
		getHibernateTemplate().save(entity);
		
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
	public List<String> getCoursesId(int teacherNo) {
		Session session = getSession();
		String hql = "select c.courseID from Courses c join c.teachers t where t.teacherNo = ?";
		return null;
	}

	@Override
	public void update(Teachers teachers) {
		getHibernateTemplate().update(teachers);
		
	}

}
