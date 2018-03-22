package controller;

import org.springframework.transaction.annotation.Transactional;

import service.YuLeNewsService;

@Transactional
public class DeleteYuLeNewsAction extends BaseAction {
	private int id;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String execute() {
		YuLeNewsService yuLeNewsService = this.getAllService().getYuLeNewsService();
		yuLeNewsService.delete(id);
		return "back";
	}
}
