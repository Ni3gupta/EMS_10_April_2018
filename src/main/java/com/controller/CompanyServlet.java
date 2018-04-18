package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import com.model.Companybean;
import com.services.CompanyService;

/**
 * Servlet implementation class CompanyServlet
 */
public class CompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public CompanyServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletrequestuest requestuest, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String Company_ID=request.getParameter("txtCompanyId");
		String Company_name=request.getParameter("txtCmpName");
		String Company_code=request.getParameter("txtCode");
		String Address=request.getParameter("txtAddress");	
		String Country=request.getParameter("Country");
		String State=request.getParameter("State");
		String City=request.getParameter("City");
		String Pincode=request.getParameter("Pincode");
		String Email=request.getParameter("txtEmail");
		String Phone=request.getParameter("txtPhone");
		String Contact_person=request.getParameter("txtContPer");
		String Person_phone=request.getParameter("txtMobile");
		String Person_email=request.getParameter("txtPersonEmail");
		
		Companybean cmp_bean=new Companybean(Company_ID, Company_name, Company_code, Address, Country, State, City, Pincode, Email, Phone, Contact_person, Person_phone, Person_email);
		System.out.println(Company_ID+" "+Company_name+" "+Company_code+" "+Phone);
		
		CompanyService cmp_service=new CompanyService();
		boolean result=cmp_service.Cmp_service(cmp_bean);
		if(result==true){
			System.out.println("Ho gya");
		}
		else{
			System.out.println("Nahi hua");
		}

		response.sendRedirect("DashboardCompany.jsp");
		
	}

}
