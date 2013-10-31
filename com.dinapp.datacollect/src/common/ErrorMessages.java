package common;



public class ErrorMessages {
	private String ErrMsg;
	
	public String GetErrorMessages (int ErrNo){
		if(ErrNo == 101) {
			ErrMsg = "Min. length of Userid should be 5 characters";
		}
		if(ErrNo == 102) {
			ErrMsg = "Password length should be 8 to 12 characters";
		}
		if(ErrNo == 103) {
			ErrMsg = "Invalid User ID or Password";
		}
		if(ErrNo == 104) {
			ErrMsg = "Thanks. Successfully Logged out";
		}
		if(ErrNo == 201) {
			ErrMsg = "Database Down. Contact administrator";
		}
		if(ErrNo == 202) {
			ErrMsg = "Error in logging out. Pls. login";
		}
		return ErrMsg;
	}
}
