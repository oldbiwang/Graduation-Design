package controller;

import org.springframework.transaction.annotation.Transactional;

import entity.YuLeKandian;
import service.YuLeKandianService;

@Transactional
public class SaveYuLeKandianAction extends BaseAction {
	
	private YuLeKandian yuLeKandian;
	
	
	public YuLeKandian getYuLeKandian() {
		return yuLeKandian;
	}


	public void setYuLeKandian(YuLeKandian yuLeKandian) {
		this.yuLeKandian = yuLeKandian;
	}


	public String execute() {
		YuLeKandianService yuLeKandianService = this.getAllService().getYuLeKandianService();
		yuLeKandianService.save(yuLeKandian);
		return "yuLeKanDianBackAction";
	}
}
