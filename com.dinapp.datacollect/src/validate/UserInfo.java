package validate;

// Validate User info like
// User ID
// Password
// Active User
// Log
public class UserInfo {
	
	public UserInfo () {}
	
	public int usrvalidation (String userName, String userPasswd) {
		
		if(userName.length() != 5) {
			return 101;
		}
		if(userPasswd.length() < 8 || userPasswd.length() > 20) {
			return 102;
		}
		return 0;		
	}
}
