package controller;

import org.springframework.transaction.annotation.Transactional;

import service.YuLeKandianService;

@Transactional
public class DeleteYuLeKandianAction extends BaseAction {
	
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String execute() {
		 YuLeKandianService yuLeKandianService = this.getAllService().getYuLeKandianService();
		 yuLeKandianService.delete(id);
		 return "yuLeKanDianBack";
	}
}
