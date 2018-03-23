package interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor {

	public LoginInterceptor() {
		
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		//得到拦截到的 action 的名称，看是否是 login,当是 login 的时候，不用进行下面的检测了，直接执行下一个拦截器
		String actionName =  invocation.getProxy().getActionName();
		if("login".equals(actionName)) {
			return invocation.invoke();
		}
		
		// 如果不是 login，则判断是否已登录，及检测 session 中 key 为 user 的值是否存在，如果不存在，跳回登陆界面
		String user = (String)invocation.getInvocationContext().getSession().get("user");
		if(user == null) {
			System.out.println("未登录");
			return "login";
		}
		
		// 进行到这里，说明用户已登录，则跳到下一个拦截器
		return invocation.invoke();
	}

}
