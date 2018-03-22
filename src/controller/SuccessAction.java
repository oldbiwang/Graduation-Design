package controller;

import org.springframework.transaction.annotation.Transactional;

@Transactional
public class SuccessAction extends BaseAction {
	public String execute() {
		return "back";
	}
}
