package controller;


import org.springframework.transaction.annotation.Transactional;

@Transactional
public class YuLeKanDianBackAction extends BaseAction {
	
	/*
	 * 方法名写错了，写成 public String extcute() 编程是需要耐心和细心的
	 * 报了 404 的错误 No result defined for action 
	 * controller.YuLeKanDianBackAction$$EnhancerBySpringCGLIB$$3557d693
	 *  and result success
	 *  
	 *  可以在 <action> 标签的方法中，指定 method 属性 ， method = extcute
	 * */
	
	public String execute() {
		// System.out.println("I'm in");
		return "yuLeKanDianBack";
	}
}
