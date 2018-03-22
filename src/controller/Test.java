package controller;

import org.springframework.transaction.annotation.Transactional;

import entity.User;

@Transactional
public class Test extends BaseAction {
	public String execute() {
		// 测试添加操作
		//this.getAllService().getUserService().saveServiceMethod();
		
		/* 测试修改操作
		 * User user = new User("update", "update", 13);
		user.setId(16);
		this.getAllService().getUserService().updateServiceMethod(user);*/
		// 查询一条的操作
		/*User user = this.getAllService().getUserService().find(1);
		System.out.println("id = " + user.getId() + "age = " + user.getAge() + "user.name = " + user.getUserName() +
				"user.password = " + user.getPassword());*/
		// 删除操作
		User user = new User("delete","delete", 18);
		user.setId(8);
		this.getAllService().getUserService().delete(user);
		return null;
	}
}
