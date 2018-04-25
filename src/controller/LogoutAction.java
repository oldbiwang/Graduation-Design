package controller;

import org.apache.struts2.ServletActionContext;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class LogoutAction extends BaseAction {

	public LogoutAction() {
	}
	
	public String execute() {
		ServletActionContext.getRequest().getSession().removeAttribute("User");
		return "login";
	}
}
