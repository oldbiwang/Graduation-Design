package controller;

import org.springframework.transaction.annotation.Transactional;

import entity.User;

@Transactional
public class Test extends BaseAction {
	public String execute() {
		// ������Ӳ���
		//this.getAllService().getUserService().saveServiceMethod();
		
		/* �����޸Ĳ���
		 * User user = new User("update", "update", 13);
		user.setId(16);
		this.getAllService().getUserService().updateServiceMethod(user);*/
		// ��ѯһ���Ĳ���
		/*User user = this.getAllService().getUserService().find(1);
		System.out.println("id = " + user.getId() + "age = " + user.getAge() + "user.name = " + user.getUserName() +
				"user.password = " + user.getPassword());*/
		// ɾ������
		User user = new User("delete","delete", 18);
		user.setId(8);
		this.getAllService().getUserService().delete(user);
		return null;
	}
}
