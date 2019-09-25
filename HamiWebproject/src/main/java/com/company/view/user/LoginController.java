package com.company.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.company.hami.user.UserDAO;
import com.company.hami.user.UserVO;

public class LoginController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//1. ����� �Է� ���� ����
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		//2. �����ͺ��̽� ����
		UserVO vo = new UserVO();
		UserDAO userDAO = new UserDAO();
		
		vo.setId(id);
		vo.setPasswd(passwd);
		
		UserVO user = userDAO.getUser(vo);
		
		//3. ������
		ModelAndView mav = new ModelAndView();
		if(user != null) {
			//�α��� ����
			/* view�� �̸� �տ� redirect:�� ���̴� ����
			 * -> ViewResolver�� �����Ǿ� �ִ��� �̸� �����ϰ� redirect�Ѵ�.
			 * �׸��� �α��ο� �������� �� ����Ǵ� GetBoardListController������
			 * Ȯ���� '.jsp'�� �����ؾ� �Ѵ�.
			 */
			HttpSession session = request.getSession();
			session.setAttribute("id", user.getId());
			mav.setViewName("index");
		}else {
			//�α��� ����
			mav.setViewName("redirect:login.jsp");
		}return mav;
	}

}
