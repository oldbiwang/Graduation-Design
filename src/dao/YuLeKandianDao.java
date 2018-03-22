package dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import entity.YuLeKandian;

@Component
public class YuLeKandianDao {

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	// ���Ӳ���
	public void save(YuLeKandian yuLeKandian) {
		sessionFactory.getCurrentSession().save(yuLeKandian);
	}
	
	// ���²���
	public void update(YuLeKandian yuLeKandian) {
		sessionFactory.getCurrentSession().update(yuLeKandian);
	}

	// ���� id ��ѯ����
	public YuLeKandian find(int id) {
		YuLeKandian yuLeKandian = sessionFactory.getCurrentSession().find(YuLeKandian.class, id);
		return yuLeKandian;
	}
	
	public List<YuLeKandian> findlist() {
		List<YuLeKandian> list = sessionFactory.getCurrentSession()
				.createQuery("from YuLeKandian").list();
		return list;
	}

	// ���� id ɾ������
	public void delete(YuLeKandian yuLeKandian) {
		sessionFactory.getCurrentSession().delete(yuLeKandian);
	}
}
