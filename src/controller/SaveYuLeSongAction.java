package controller;

import org.springframework.transaction.annotation.Transactional;

import entity.YuLeSong;
import service.YuLeSongService;

@Transactional
public class SaveYuLeSongAction extends BaseAction {
	
	private YuLeSong yuLeSong;

	public YuLeSong getYuLeSong() {
		return yuLeSong;
	}

	public void setYuLeSong(YuLeSong yuLeSong) {
		this.yuLeSong = yuLeSong;
	}
	
	public String execute() {
		YuLeSongService yuLeSongService = this.getAllService().getYuLeSongService();
		yuLeSongService.save(yuLeSong);
		return "yuLeSongBack";
	}
}
