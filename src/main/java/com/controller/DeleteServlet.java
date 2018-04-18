package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.services.DeleteService;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	public DeleteServlet() {
        super();
      
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String Id=request.getParameter("delete");
		System.out.println(Id);
		DeleteService del_service=new DeleteService();
		boolean result=del_service.delete_company(Id);
		
			if(result==true) {
				System.out.println("Deleted");
			}
			else {
				System.out.println("failed");
			}
			response.sendRedirect("DashboardCompany.jsp");
	}

}
