package controller;

import org.springframework.transaction.annotation.Transactional;

import service.YuLeSongService;

@Transactional
public class DeleteYuLeSongAction extends BaseAction {

	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String execute() {
		YuLeSongService yuLeSongService = this.getAllService().getYuLeSongService();
		yuLeSongService.delete(id);
		return "yuLeSongBack";
	}
}
