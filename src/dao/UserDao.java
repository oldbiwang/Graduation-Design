package dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import entity.User;

@Component
public class UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	// ���Ӳ���
	public void save(User user) {
		sessionFactory.getCurrentSession().save(user);
	}
	
	// ���²���
	public void update(User user) {
		sessionFactory.getCurrentSession().update(user);
	}

	// ���� id ��ѯ����
	public User find(int id) {
		User user = sessionFactory.getCurrentSession().find(User.class, id);
		return user;
	}

	// ���� id ɾ������
	public void delete(User user) {
		sessionFactory.getCurrentSession().delete(user);
	}

	public boolean validate(String userName, String password) {
		User user = new User(userName, password, null);
		User user1 = (User)sessionFactory.getCurrentSession()
				.createQuery("from User where userName = :userName")
				.setParameter("userName", userName).uniqueResult();
		System.out.println(user1.getPassword());
		if(user1.getPassword() != null && password.equals(user1.getPassword()))
			return true;
		else
			return false;
	}
}
