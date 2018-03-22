package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.AllDao;
import entity.User;

@Service
public class UserService {

	@Autowired
	private AllDao allDao;

	public AllDao getAllDao() {
		return allDao;
	}

	public void setAllDao(AllDao allDao) {
		this.allDao = allDao;
	}

	// 保存方法
	public void saveServiceMethod() {
		User user1 = new User();
		user1.setUserName("heeh");
		user1.setPassword("not null");
		user1.setAge(12);

		User user2 = new User();
		user2.setUserName("test");
		user2.setPassword("not null yeah");
		user2.setAge(3);

		allDao.getUserDao().save(user1);
		allDao.getUserDao().save(user2);
	}
	
	// 更改操作
	public void updateServiceMethod(User user) {
		allDao.getUserDao().update(user);
	}
	
	// 查询操作
	public User find(int id) {
		User user = allDao.getUserDao().find(1);
		return user;
	}
	
	// 删除操作
	public void delete(User user) {
		allDao.getUserDao().delete(user);
	}

	public boolean login(String userName, String password) {
		boolean status = allDao.getUserDao().validate(userName, password);
		return status;
	}
}
