package controller;

import org.apache.struts2.ServletActionContext;
import org.springframework.transaction.annotation.Transactional;

import entity.User;
import service.UserService;

@Transactional
public class LogininAction extends BaseAction {
	private User user;
	
	public String execute() {
		UserService userService = this.getAllService().getUserService();
		if(user != null) {
			if((userService.login(user.getUserName(), user.getPassword()))){
				System.out.println("user ==== " + user);
				ServletActionContext.getRequest().getSession().setAttribute("User", user);
				return "success";
			}
			else {
				return "error";
			}
		}
		return null;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
