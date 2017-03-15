package cn.hzun.sign.base;

import javax.annotation.Resource;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.HibernateTemplate;

/**
 * 
 * @author mesie
 * 2016年4月8日 下午6:39:38
 */
public class BaseHibernateDao {

	private static final ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();

	private HibernateTemplate hibernateTemplate;

	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;

	public HibernateTemplate getHibernateTemplate() {
		hibernateTemplate = new HibernateTemplate(sessionFactory);
		return hibernateTemplate;
	}

	/**
	 * 获得线程安全的会话
	 * @return
	 */
	public Session getSession() {
		Session session = (Session) threadLocal.get();
		if (session == null || !session.isOpen()) {
			session = (sessionFactory != null) ? sessionFactory.openSession()
					: null;
			threadLocal.set(session);
		}
		return session;
	}

	/**
	 * 关闭会话
	 * @throws HibernateException
	 */
	public static void closeSession() throws HibernateException {
		Session session = (Session) threadLocal.get();
		threadLocal.set(null);
		if (session != null) {
			session.close();
		}
	}
}
