package dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import entity.YuLeNews;

@Component
public class YuLeNewsDao {

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	// 增加操作
	public void save(YuLeNews yuLeNews) {
		sessionFactory.getCurrentSession().save(yuLeNews);
	}
	
	// 更新操作
	public void update(YuLeNews yuLeNews) {
		sessionFactory.getCurrentSession().update(yuLeNews);
	}

	// 根据 id 查询操作
	public YuLeNews find(int id) {
		YuLeNews yuLeNews = sessionFactory.getCurrentSession().find(YuLeNews.class, id);
		return yuLeNews;
	}
	
	public List<YuLeNews> findlist() {
		List<YuLeNews> list = sessionFactory.getCurrentSession()
				.createQuery("from YuLeNews").list();
		return list;
	}

	// 根据 id 删除操作
	public void delete(YuLeNews yuLeNews) {
		sessionFactory.getCurrentSession().delete(yuLeNews);
	}
}
