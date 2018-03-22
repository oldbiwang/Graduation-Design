package controller;

import org.springframework.transaction.annotation.Transactional;

import entity.YuLeKandian;
import service.YuLeKandianService;

@Transactional
public class EditSaveYuLeKandianAction extends BaseAction {

		private YuLeKandian yuLeKandian;
		
		private int id;

		public YuLeKandian getYuLeKandian() {
			return yuLeKandian;
		}

		public void setYuLeKandian(YuLeKandian yuLeKandian) {
			this.yuLeKandian = yuLeKandian;
		}
		
		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}
		
		public String execute() {
			 yuLeKandian.setId(id);
			 YuLeKandianService yuLeKandianService = this.getAllService().getYuLeKandianService();
			 yuLeKandianService.update(yuLeKandian);
			 return "yuLeKanDianBack";
		}


}
