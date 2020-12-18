package bean;
import java.io.Serializable;


	public class LoginBean implements Serializable {
	   
	    private static final long serialVersionUID = 1L;
	    private String uname;
	    private String pass;

	    public String getUname() {
	        return uname;
	    }

	    public void setUname(String uname) {
	        this.uname = uname;
	    }

	    public String getPass() {
	        return pass;
	    }

	    public void setPass(String pass) {
	        this.pass = pass;
	    }
	
}
