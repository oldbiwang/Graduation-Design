package controller;

import org.springframework.transaction.annotation.Transactional;

import entity.YuLeNews;
import service.YuLeNewsService;

@Transactional
public class SaveYuLeNewsAction extends BaseAction {
	private YuLeNews yuLeNews;

	public YuLeNews getYuLeNews() {
		return yuLeNews;
	}

	public void setYuLeNews(YuLeNews yuLeNews) {
		this.yuLeNews = yuLeNews;
	}
	
	public String execute() {
		YuLeNewsService yuLeNewsService = this.getAllService().getYuLeNewsService();
		System.out.println(yuLeNews);
		yuLeNewsService.save(yuLeNews);;
		return "back";
	}
}
