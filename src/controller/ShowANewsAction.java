package controller;

import org.springframework.transaction.annotation.Transactional;

@Transactional
public class ShowANewsAction extends BaseAction {

	public ShowANewsAction() {
		
	}
	
	private int id;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String execute() {
		return "showanews";
	}
}
