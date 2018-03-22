package dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import entity.YuLeSong;

@Component
public class YuLeSongDao {

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	// ���Ӳ���
	public void save(YuLeSong yuLeSong) {
		sessionFactory.getCurrentSession().save(yuLeSong);
	}
	
	// ���²���
	public void update(YuLeSong yuLeSong) {
		sessionFactory.getCurrentSession().update(yuLeSong);
	}

	// ���� id ��ѯ����
	public YuLeSong find(int id) {
		YuLeSong yuLeSong = sessionFactory.getCurrentSession().find(YuLeSong.class, id);
		return yuLeSong;
	}

	// ���� id ɾ������
	public void delete(YuLeSong yuLeSong) {
		sessionFactory.getCurrentSession().delete(yuLeSong);
	}

	public List<YuLeSong> findlist() {
		List<YuLeSong> list = sessionFactory.getCurrentSession()
				.createQuery("from YuLeSong").list();
		return list;
	}
}
