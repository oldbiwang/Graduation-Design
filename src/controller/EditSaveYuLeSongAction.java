package controller;

import org.springframework.transaction.annotation.Transactional;

import entity.YuLeSong;
import service.YuLeSongService;

@Transactional
public class EditSaveYuLeSongAction extends BaseAction {

	private int id;
	
	private YuLeSong  yuLeSong;
	
	public YuLeSong getYuLeSong() {
		return yuLeSong;
	}

	public void setYuLeSong(YuLeSong yuLeSong) {
		this.yuLeSong = yuLeSong;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String execute() {
		yuLeSong.setId(id);
		YuLeSongService yuLeSongService = this.getAllService().getYuLeSongService();
		yuLeSongService.update(yuLeSong);
		return "yuLeSongBack";
	}
}
