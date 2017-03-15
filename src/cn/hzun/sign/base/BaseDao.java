package cn.hzun.sign.base;

import java.io.Serializable;
import java.util.List;

/**
 * Dao的通用接口
 * @author mesie
 * 2016年4月8日 下午6:19:18
 */
public interface BaseDao<T,Id extends Serializable> {
	/**
	 * 获取对象
	 * @param id
	 * @return
	 */
	T load(Id id);
	
	/**
	 * 获取对象
	 * @param id
	 * @return
	 */
	T get(Id id);
	
	/**
	 * 查询所有对象
	 * @return
	 */
	List<T> findAll();
	
	/**
	 * 保存对象
	 * @param entity
	 * @return
	 */
	Id save(T entity);
	 
	/**
	 * 保存对象
	 * @param entity
	 */
	void persist(T entity);
	
	/**
	 * 保存或者更新对象
	 * @param entity
	 */
	void saveOrUpdate(T entity);
	
	/**
	 * 删除
	 * @param id
	 */
	void delete(Id id);
	
	/**
	 * 缓存清理
	 */
	void flush();

}
