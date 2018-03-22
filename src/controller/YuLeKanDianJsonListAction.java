package controller;

import java.io.IOException;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.transaction.annotation.Transactional;

import entity.YuLeKandian;
import net.sf.json.JSONArray;
import service.YuLeKandianService;

@Transactional
public class YuLeKanDianJsonListAction extends BaseAction {
	
	// 要返回娱乐看点列表的 json 数据
	private  JSONArray jsonArray;

	public JSONArray getJsonArray() {
		return jsonArray;
	}

	public void setJsonArray(JSONArray jsonArray) {
		this.jsonArray = jsonArray;
	}
	
	public String execute() throws IOException {
		YuLeKandianService yuLeKandianService = this.getAllService().getYuLeKandianService();
		List<YuLeKandian> list = yuLeKandianService.findlist();
		
		jsonArray = JSONArray.fromObject(list);
		
		ServletActionContext.getResponse().setContentType("text/html");
		ServletActionContext.getResponse().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().getWriter().printf(jsonArray.toString());
		ServletActionContext.getResponse().getWriter().flush();
		ServletActionContext.getResponse().getWriter().close();
		return null;
	}
}
