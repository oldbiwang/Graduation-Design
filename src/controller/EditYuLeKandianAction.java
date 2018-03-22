package controller;

import java.io.IOException;

import org.apache.struts2.ServletActionContext;
import org.springframework.transaction.annotation.Transactional;

import entity.YuLeKandian;
import entity.YuLeNews;
import net.sf.json.JSONObject;
import service.YuLeKandianService;
import service.YuLeNewsService;

@Transactional
public class EditYuLeKandianAction extends BaseAction {
	
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
		YuLeKandianService yuLeKandianService = this.getAllService().getYuLeKandianService();
		YuLeKandian yuLeKandian = yuLeKandianService.getAllDao().getYuLeKandianDao().find(id);
		jsonObject = JSONObject.fromObject(yuLeKandian);
		// System.out.println(jsonArray.toString());
		
		ServletActionContext.getResponse().setContentType("text/html");
		ServletActionContext.getResponse().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().getWriter().printf(jsonObject.toString());
		ServletActionContext.getResponse().getWriter().flush();
		ServletActionContext.getResponse().getWriter().close();
		
		return null;
	}
}
