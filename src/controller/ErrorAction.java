package controller;

import org.springframework.transaction.annotation.Transactional;

@Transactional
public class ErrorAction extends BaseAction {
	public String execute() {
		return "error";
	}
}
