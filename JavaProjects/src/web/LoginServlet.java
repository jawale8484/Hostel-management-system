package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.LoginBean;
import database.LoginDao;

/**
 * Servlet implementation class LoginServlet
 */



@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDao loginDao;

    public void init() {
        loginDao = new LoginDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String uname = request.getParameter("user");
        String pass = request.getParameter("pass");
        LoginBean loginBean = new LoginBean();
        loginBean.setUname(uname);
        loginBean.setPass(pass);

        try {
            if (loginDao.validate(loginBean)) {
                //HttpSession session = request.getSession();
                // session.setAttribute("username",username);
                response.sendRedirect("home.jsp");
            } else {
                HttpSession session = request.getSession();
                //session.setAttribute("user", username);
                response.sendRedirect("login.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
