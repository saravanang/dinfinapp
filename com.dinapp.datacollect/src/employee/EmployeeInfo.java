package employee;

import java.io.IOException;
import java.sql.DriverManager;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.EmployeeDetails;
import data.EmployeeData;
import data.LogoutData;
import common.ErrorMessages;


/**
 * Servlet implementation class LoginInfo
 */
//@WebServlet(name = "logout", urlPatterns = { "/logout" })
public class EmployeeInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String strError = null;
	
	
	public EmployeeInfo () {
    	try{
    		new EmployeeData();
    	}catch (Exception e) {
    		e.printStackTrace();
    		if (strError == null)
    			strError = "DB connection failure. Pls. contact adminstrator";
    	}
    }
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean emp = false;		
		HttpSession session = request.getSession(true);
		// Set the Employee data user bean
		EmployeeDetails empinfo = new EmployeeDetails();
		
		
		empinfo.setEi_addedby(Integer.parseInt((String)session.getAttribute("userid")));
		empinfo.setEi_fname(request.getParameter("fldENfirst"));
		
		System.out.println(empinfo.getEi_fname() + empinfo.getEi_addedby() + request.getParameter("fldENfirst") + response.getWriter() + request.getParameterValues("fldENfirst"));
		
		
		if(emp) {
			session.setAttribute("error", strError);
			response.sendRedirect(request.getContextPath() +"/employee.jsp");
		}else {
			System.out.println("In Employee Info: " + strError);
			session.setAttribute("error", strError);
			response.sendRedirect(request.getContextPath() +"/employee.jsp");
		}		
	}
	
	//@Override
	public void destroy() {
	
		super.destroy();
			
		String prefix = getClass().getSimpleName() + "destroy ()";
		ServletContext srvctx = getServletContext();
		
		//databaseManager.disconnectDB();
		System.out.println("Disconnected the database in Servlet Destroy function");
		
		try {
			Enumeration<java.sql.Driver> drivers = DriverManager.getDrivers();
			
			while(drivers.hasMoreElements()) {
				DriverManager.deregisterDriver(drivers.nextElement());
			}
			
		} catch (Exception e) {
			srvctx.log(prefix + "Exception caught while deregistering JDBC drivers", e);
		}
		srvctx.log("Complete");
	}
}
