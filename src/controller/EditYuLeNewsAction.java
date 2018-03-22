package controller;

import java.io.IOException;

import org.apache.struts2.ServletActionContext;
import org.springframework.transaction.annotation.Transactional;

import entity.YuLeNews;
import net.sf.json.JSONObject;
import service.YuLeNewsService;

@Transactional
public class EditYuLeNewsAction extends BaseAction {
	
	private int id;
	private JSONObject jsonObject;
	
	public JSONObject getJsonObject() {
		return jsonObject;
	}


	public void setJsonObject(JSONObject jsonObject) {
		this.jsonObject = jsonObject;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String execute() throws IOException {
		YuLeNewsService yuLeNewsService = this.getAllService().getYuLeNewsService();
		YuLeNews yuLeNews = yuLeNewsService.getAllDao().getYuLeNewsDao().find(id);
		System.out.println(yuLeNews.getDate().toString());
		jsonObject = JSONObject.fromObject(yuLeNews);
		// System.out.println(jsonArray.toString());
		
		ServletActionContext.getResponse().setContentType("text/html");
		ServletActionContext.getResponse().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().getWriter().printf(jsonObject.toString());
		ServletActionContext.getResponse().getWriter().flush();
		ServletActionContext.getResponse().getWriter().close();
		
		return "null";
	}
}
