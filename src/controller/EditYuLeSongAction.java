package controller;

import java.io.IOException;

import org.apache.struts2.ServletActionContext;
import org.springframework.transaction.annotation.Transactional;

import entity.YuLeSong;
import net.sf.json.JSONObject;
import service.YuLeSongService;

@Transactional
public class EditYuLeSongAction extends BaseAction {
	
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
		YuLeSongService yuLeSongService = this.getAllService().getYuLeSongService();
		YuLeSong yuLeSong  = yuLeSongService.getAllDao().getYuLeSongDao().find(id);
		
		jsonObject = JSONObject.fromObject(yuLeSong);
		System.out.println(jsonObject.toString());
		ServletActionContext.getResponse().setContentType("text/html");
		ServletActionContext.getResponse().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().getWriter().printf(jsonObject.toString());
		ServletActionContext.getResponse().getWriter().flush();
		ServletActionContext.getResponse().getWriter().close();
		
		return null;
	}
}
