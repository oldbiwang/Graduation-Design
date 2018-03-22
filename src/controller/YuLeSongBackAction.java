package controller;

import org.springframework.transaction.annotation.Transactional;

@Transactional
public class YuLeSongBackAction extends BaseAction {
	public String execute() {
		return "yuLeSongBack";
	}
}
