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

	// 增加操作
	public void save(User user) {
		sessionFactory.getCurrentSession().save(user);
	}
	
	// 更新操作
	public void update(User user) {
		sessionFactory.getCurrentSession().update(user);
	}

	// 根据 id 查询操作
	public User find(int id) {
		User user = sessionFactory.getCurrentSession().find(User.class, id);
		return user;
	}

	// 根据 id 删除操作
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
