package login;

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

import validate.UserInfo;
import beans.LoginDetails;
import data.LoginData;
import common.ErrorMessages;
import data.EmployeeData;
import beans.EmployeeDetails;



/**
 * Servlet implementation class LoginInfo
 */
//@WebServlet(name = "login", urlPatterns = { "/login" })
public class LoginInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// Create a new instance for the class DatabaseManager
	//private DatabaseManager databaseManager = new DatabaseManager();
	private LoginDetails logininfo;
	private LoginData logindata;
	private EmployeeData empdata;
	private EmployeeDetails empdet;
	//private FetchMenu fetchmenu;	
	private ErrorMessages getErrorMsg = new ErrorMessages();
 	private int userval = 0;
	private String strError = null;	
	    
    public LoginInfo () {
    	try{
    		logindata = new LoginData();
    		empdata = new EmployeeData();
    	}catch (Exception e) {
    		e.printStackTrace();
    		if (strError == null)
    			strError = "DB connection failure. Pls. contact adminstrator";
    	}
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		
		if (session.getAttribute("userid") == null) {
			response.sendRedirect("/index.jsp");
		} else {
			response.sendRedirect("/welcome.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//DatabaseManager dataManager = new DatabaseManager();
		boolean login = false;
		HttpSession session = request.getSession(true);
		//logindata = new LoginData();
		UserInfo val = new UserInfo();
		
		if (session.getAttribute("userid") == null) {
		
			String usrname = request.getParameter("userID");
			String usrpasswd = request.getParameter("usrpasswd");
					
			userval = val.usrvalidation(usrname,usrpasswd); 
					
			if(userval == 0) {
				logininfo = logindata.getLoginDetls(usrname, usrpasswd);
				try {
					if (logininfo.getLi_userid() > 0) {
						login = true;
						System.out.println("User ID is:" + logininfo.getLi_userid());
						System.out.println("Password:" + logininfo.getLi_password());
						System.out.println("Last Login time:" +logininfo.getLi_lastlogin());
					} else {
						strError = getErrorMsg.GetErrorMessages(103);					
					}
				} catch (NullPointerException npe) {
					System.out.println("Error in DB login value return");
					npe.printStackTrace();
					strError = "Unable to validate the User ID, Pls. try again later";
					System.out.println("The Error value is " + strError);
					login = false;								
				}
			} else {
				System.out.println("The error message value is" + userval);
				strError = getErrorMsg.GetErrorMessages(userval);
				login = false;			
			}
			
			if(login) {
				// Redirect the page to Welcome screen only if the user ID is valid
				
				empdet = empdata.getEmployeeData(usrname);
				request.setAttribute("empdetails", empdet);
				session.setAttribute("userid",usrname);
				session.setAttribute("username",empdet.getEi_fname() + " " + empdet.getEi_lname() );
				session.setAttribute("lstlogin",logininfo.getLi_lastlogin());
				request.setAttribute("logindetails", logininfo);
				session.setAttribute("error", null);
				logindata.setLoginStatus(usrname);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/welcome.jsp");
				dispatcher.forward(request,response);			
				
			} else {			
				session.setAttribute("error", strError);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
				dispatcher.forward(request, response);
			}
		}else {
			System.out.println("Redirecting in Servlet");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/welcome.jsp");
			dispatcher.forward(request,response);			
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
