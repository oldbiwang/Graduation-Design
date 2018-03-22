package dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import entity.YuLeSong;

@Component
public class AllDao {

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private YuLeNewsDao yuLeNewsDao;
	
	@Autowired
	private YuLeKandianDao yuLeKandianDao;
	
	@Autowired
	private YuLeSongDao yuLeSongDao;

	public YuLeSongDao getYuLeSongDao() {
		return yuLeSongDao;
	}

	public void setYuLeSongDao(YuLeSongDao yuLeSongDao) {
		this.yuLeSongDao = yuLeSongDao;
	}

	public YuLeNewsDao getYuLeNewsDao() {
		return yuLeNewsDao;
	}

	public void setYuLeNewsDao(YuLeNewsDao yuLeNewsDao) {
		this.yuLeNewsDao = yuLeNewsDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public YuLeKandianDao getYuLeKandianDao() {
		return yuLeKandianDao;
	}

	public void setYuLeKandianDao(YuLeKandianDao yuLeKandianDao) {
		this.yuLeKandianDao = yuLeKandianDao;
	}

}
