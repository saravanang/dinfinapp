package logout;

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

import data.LogoutData;
import common.ErrorMessages;


/**
 * Servlet implementation class LoginInfo
 */
//@WebServlet(name = "logout", urlPatterns = { "/logout" })
public class LogoutInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// Create a new instance for the class DatabaseManager
	//private DatabaseManager databaseManager = new DatabaseManager();
	private LogoutData logoutdata;
	//private FetchMenu fetchmenu;	
	private ErrorMessages getErrorMsg = new ErrorMessages();

	private String strError = null;	
	    
    public LogoutInfo () {
    	try{
    		logoutdata = new LogoutData();
    	}catch (Exception e) {
    		e.printStackTrace();
    		if (strError == null)
    			strError = "DB connection failure. Pls. contact adminstrator";
    	}
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("In Do POST of logout");
		response.sendRedirect(request.getContextPath() + "/index.jsp");		 
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean logout = false;
		HttpSession session = request.getSession();
		
		String usrname = (String) session.getAttribute("userid");
		System.out.println("User ID in Logout screen is: " + usrname);
		if (usrname != null) {
			logout = logoutdata.setLogoutStatus(usrname);
			session.removeAttribute("userid");
			session.removeAttribute("username");
			session.removeAttribute("lstlogin");
			session.invalidate();
		}	
		
		if(logout) {			
			strError = getErrorMsg.GetErrorMessages(104);			
		} else {			
			strError = getErrorMsg.GetErrorMessages(104);
		}
		//RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		//dispatcher.forward(request, response);
		System.out.println("In Logout: " + strError);
		session = request.getSession(true);
		session.setAttribute("error", strError);
		response.sendRedirect(request.getContextPath() +"/index.jsp");
	
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
