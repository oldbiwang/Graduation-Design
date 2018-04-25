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
		
		 //��ӡ����������ʵ�Action��url
        System.out.println("��ȡ����Action��url == "+ actionName);
        
        // ����ǵ�¼�ύ����½���� �� ���� json ���ݡ�չʾ���źͿ����б���������ǾͲ�����
		if("logininAction".equals(actionName)
				|| "loginAction".equals(actionName)
				|| "yuLeNewsBackAction".equals(actionName)
				|| "yuLeKanDianJsonListAction".equals(actionName)
				|| "yuLeSongJsonListAction".equals(actionName)
				|| "showNewsListAction".equals(actionName)
				|| "showKandianListAction".equals(actionName)
				|| "error".equals(actionName)) {
			return invocation.invoke();
		}
		
		// �����ǰ�˵�ҳ����ת������ô����Ҳ������
		if("showANewsAction".equals(actionName)
				|| "editYuLeNewsAction".equals(actionName)
				|| "showAKandianAction".equals(actionName)
				|| "editYuLeKandianAction".equals(actionName)) {
			return invocation.invoke();
		}
		
		// ������� login�����ж��Ƿ��ѵ�¼������� session �� key Ϊ user ��ֵ�Ƿ���ڣ���������ڣ����ص�½����
		Object user = invocation.getInvocationContext().getSession().get("User");
		System.out.println("user = " + user);
		if(user == null) {
			System.out.println("δ��¼, ���ȵ�¼");
			return "login";
		}
		
		// ���е����˵���û��ѵ�¼����������һ��������
		return invocation.invoke();
	}

}
