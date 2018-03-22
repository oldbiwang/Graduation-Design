package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AllService {

	@Autowired
	private UserService userService;
	
	@Autowired
	private YuLeNewsService yuLeNewsService;
	
	@Autowired 
	private YuLeKandianService yuLeKandianService;
	
	@Autowired
	private YuLeSongService yuLeSongService;

	public YuLeSongService getYuLeSongService() {
		return yuLeSongService;
	}

	public void setYuLeSongService(YuLeSongService yuLeSongService) {
		this.yuLeSongService = yuLeSongService;
	}

	public YuLeKandianService getYuLeKandianService() {
		return yuLeKandianService;
	}

	public void setYuLeKandianService(YuLeKandianService yuLeKandianService) {
		this.yuLeKandianService = yuLeKandianService;
	}

	public YuLeNewsService getYuLeNewsService() {
		return yuLeNewsService;
	}

	public void setYuLeNewsService(YuLeNewsService yuLeNewsService) {
		this.yuLeNewsService = yuLeNewsService;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}
