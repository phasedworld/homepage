package com.company.view.booking;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.company.hami.booking.BookingDAO;
import com.company.hami.booking.BookingVO;


public class MakeReservationController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("makeReservation �غ�");	
			//1. ����� �Է� ���� ����
		/*
		 * String year = request.getParameter("res_year"); String month =
		 * request.getParameter("res_month"); String date =
		 * request.getParameter("res_date"); String res_time =
		 * request.getParameter("res_time");
		 */
		
				String year = "2019";
				String month = "3";
				String date = "5";
				String res_time = "13";
				
				String prepayment = request.getParameter("prepayment");
				
				String id = request.getParameter("id");
				String d_name = request.getParameter("d_name");
				String d_weight = request.getParameter("d_weight");
				String demend = request.getParameter("demend");
				
				//2. �����ͺ��̽� ����
				BookingVO vo = new BookingVO();
				
				//1~9���� 0 ���̴� ó���� �����ҷ�		
				if(month.length()==1) { month="0"+month; }
				if(date.length()==1) { date="0"+date; }		 
				vo.setRes_date(year+"-"+month+"-"+date);
				
				vo.setRes_time(Integer.parseInt(res_time));
				vo.setPrepayment(Integer.parseInt(prepayment));
				
				vo.setId(id);
				vo.setD_name(d_name);
				vo.setD_weight(Integer.parseInt(d_weight));
				vo.setDemend(demend);
				
				BookingDAO bookingDAO = new BookingDAO();
				
				bookingDAO.makeReservation(vo);				
				//3. ������
				ModelAndView mav = new ModelAndView();
				mav.setViewName("index");
				
				return mav;
			}

}
