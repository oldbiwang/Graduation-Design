package controller;

import org.springframework.transaction.annotation.Transactional;

@Transactional
public class LoginAction extends BaseAction {
	public String execute() {
		return "login";
	}
}
