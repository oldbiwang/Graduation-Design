package controller;

import org.springframework.transaction.annotation.Transactional;

@Transactional
public class ShowAKandianAction extends BaseAction {

	public ShowAKandianAction() {
		
	}

	private int id;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String execute() {
		return "showakandian";
	}
}
