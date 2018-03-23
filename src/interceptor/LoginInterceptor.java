package interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor {

	public LoginInterceptor() {
		
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		//�õ����ص��� action �����ƣ����Ƿ��� login,���� login ��ʱ�򣬲��ý�������ļ���ˣ�ֱ��ִ����һ��������
		String actionName =  invocation.getProxy().getActionName();
		if("login".equals(actionName)) {
			return invocation.invoke();
		}
		
		// ������� login�����ж��Ƿ��ѵ�¼������� session �� key Ϊ user ��ֵ�Ƿ���ڣ���������ڣ����ص�½����
		String user = (String)invocation.getInvocationContext().getSession().get("user");
		if(user == null) {
			System.out.println("δ��¼");
			return "login";
		}
		
		// ���е����˵���û��ѵ�¼����������һ��������
		return invocation.invoke();
	}

}
