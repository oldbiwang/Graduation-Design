package controller;

import org.springframework.transaction.annotation.Transactional;

//import com.opensymphony.xwork2.ModelDriven;

import entity.User;
import service.UserService;

@Transactional
public class LogininAction extends BaseAction /*implements ModelDriven<User>*/{
	private User user;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String execute() {
		UserService userService = this.getAllService().getUserService();	
		if((userService.login(user.getUserName(), user.getPassword())))
			return "success";
		else
			return "error";
	}

/*	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}*/
}
