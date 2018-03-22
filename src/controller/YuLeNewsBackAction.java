package controller;

import java.io.IOException;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.transaction.annotation.Transactional;

import entity.YuLeNews;
import net.sf.json.JSONArray;
import service.YuLeNewsService;

@Transactional
public class YuLeNewsBackAction extends BaseAction {
	
	private  JSONArray jsonArray;
	public String execute() throws IOException {
		YuLeNewsService yuLeNewsService = this.getAllService().getYuLeNewsService();
		List<YuLeNews> list = yuLeNewsService.findlist();
		
		jsonArray = JSONArray.fromObject(list);
		// System.out.println(jsonArray.toString());
		
		ServletActionContext.getResponse().setContentType("text/html");
		ServletActionContext.getResponse().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().getWriter().printf(jsonArray.toString());
		ServletActionContext.getResponse().getWriter().flush();
		ServletActionContext.getResponse().getWriter().close();
		return null;
	}
	
	public JSONArray getJsonArray() {
		return jsonArray;
	}
	
	public void setJsonArray(JSONArray jsonArray) {
		this.jsonArray = jsonArray;
	}
}
