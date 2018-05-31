package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TYuding;

/**
 * A data access object (DAO) providing persistence and search support for
 * TYuding entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.model.TYuding
 * @author MyEclipse Persistence Tools
 */

public class TYudingDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(TYudingDAO.class);
	// property constants
	public static final String USER_ID = "userId";
	public static final String CHECI_ID = "checiId";
	public static final String SHULIANG = "shuliang";
	public static final String ZONGJINE = "zongjine";
	public static final String NIDEXINGMING = "nidexingming";
	public static final String LIANXIHUA = "lianxihua";
	public static final String SONGHUODIZHI = "songhuodizhi";
	public static final String ZHIFUFANGSHI = "zhifufangshi";
	public static final String YUDINGSHI = "yudingshi";
	public static final String ZHUANGTAI = "zhuangtai";

	protected void initDao() {
		// do nothing
	}

	public void save(TYuding transientInstance) {
		log.debug("saving TYuding instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TYuding persistentInstance) {
		log.debug("deleting TYuding instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TYuding findById(java.lang.Integer id) {
		log.debug("getting TYuding instance with id: " + id);
		try {
			TYuding instance = (TYuding) getHibernateTemplate().get(
					"com.model.TYuding", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TYuding instance) {
		log.debug("finding TYuding instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding TYuding instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from TYuding as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByUserId(Object userId) {
		return findByProperty(USER_ID, userId);
	}

	public List findByCheciId(Object checiId) {
		return findByProperty(CHECI_ID, checiId);
	}

	public List findByShuliang(Object shuliang) {
		return findByProperty(SHULIANG, shuliang);
	}

	public List findByZongjine(Object zongjine) {
		return findByProperty(ZONGJINE, zongjine);
	}

	public List findByNidexingming(Object nidexingming) {
		return findByProperty(NIDEXINGMING, nidexingming);
	}

	public List findByLianxihua(Object lianxihua) {
		return findByProperty(LIANXIHUA, lianxihua);
	}

	public List findBySonghuodizhi(Object songhuodizhi) {
		return findByProperty(SONGHUODIZHI, songhuodizhi);
	}

	public List findByZhifufangshi(Object zhifufangshi) {
		return findByProperty(ZHIFUFANGSHI, zhifufangshi);
	}

	public List findByYudingshi(Object yudingshi) {
		return findByProperty(YUDINGSHI, yudingshi);
	}

	public List findByZhuangtai(Object zhuangtai) {
		return findByProperty(ZHUANGTAI, zhuangtai);
	}

	public List findAll() {
		log.debug("finding all TYuding instances");
		try {
			String queryString = "from TYuding";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TYuding merge(TYuding detachedInstance) {
		log.debug("merging TYuding instance");
		try {
			TYuding result = (TYuding) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TYuding instance) {
		log.debug("attaching dirty TYuding instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TYuding instance) {
		log.debug("attaching clean TYuding instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TYudingDAO getFromApplicationContext(ApplicationContext ctx) {
		return (TYudingDAO) ctx.getBean("TYudingDAO");
	}
}