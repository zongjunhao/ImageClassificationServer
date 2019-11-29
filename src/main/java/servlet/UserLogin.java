package servlet;

import factory.DAOFactory;
import vo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//????????????????
@WebServlet(name = "UserLogin", urlPatterns = "/user/login")
public class UserLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码方式为utf-8
        response.setCharacterEncoding("UTF-8");
        //设置客户端的解码方式为utf-8
        response.setContentType("text/html;charset=utf-8");

        //获取参数
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        //读取数据库信息判断用户输入是否正确
        User user = null;
        PrintWriter writer = response.getWriter();
        try {
            user = DAOFactory.getUserDAOInstance().findByEmail(email);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (user != null) {
            if (user.getEmail().equals(email) && user.getPwd().equals(password)) {
                writer.write("success");
            } else {
                writer.write("fail");
            }
        } else {
            writer.write("fail");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
