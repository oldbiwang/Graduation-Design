package controller;


import org.springframework.transaction.annotation.Transactional;

@Transactional
public class YuLeKanDianBackAction extends BaseAction {
	
	/*
	 * ������д���ˣ�д�� public String extcute() �������Ҫ���ĺ�ϸ�ĵ�
	 * ���� 404 �Ĵ��� No result defined for action 
	 * controller.YuLeKanDianBackAction$$EnhancerBySpringCGLIB$$3557d693
	 *  and result success
	 *  
	 *  ������ <action> ��ǩ�ķ����У�ָ�� method ���� �� method = extcute
	 * */
	
	public String execute() {
		// System.out.println("I'm in");
		return "yuLeKanDianBack";
	}
}
