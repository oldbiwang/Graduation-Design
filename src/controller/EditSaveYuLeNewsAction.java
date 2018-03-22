package controller;

import org.springframework.transaction.annotation.Transactional;

import entity.YuLeNews;
import service.YuLeNewsService;

@Transactional
public class EditSaveYuLeNewsAction extends BaseAction {
	
	private int id;
	
	private YuLeNews yuLeNews;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public YuLeNews getYuLeNews() {
		return yuLeNews;
	}

	public void setYuLeNews(YuLeNews yuLeNews) {
		this.yuLeNews = yuLeNews;
	}

	public String execute() {
		//System.out.println("id = " + id);
		yuLeNews.setId(id);
		YuLeNewsService yuLeNewsService = this.getAllService().getYuLeNewsService();
		//System.out.println(yuLeNews.getTitle());
		yuLeNewsService.update(yuLeNews);
		return "editsuccess";
	}
}
