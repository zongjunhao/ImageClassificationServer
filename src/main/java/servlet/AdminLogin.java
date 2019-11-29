package servlet;

import factory.DAOFactory;
import vo.Admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AdminLogin", urlPatterns = "/admin/login")
public class AdminLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码方式为utf-8
        response.setCharacterEncoding("UTF-8");
        //设置客户端的解码方式为utf-8
        response.setContentType("text/html;charset=utf-8");

        //获取参数
        String account = request.getParameter("account");
        String password = request.getParameter("password");

        //读取数据库信息判断用户输入是否正确
        Admin admin = null;
        PrintWriter out = response.getWriter();
        try {
            admin = DAOFactory.getAdminDAOInstance().findByAccount(account);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (admin != null) {
            if (admin.getAccount().equals(account) && admin.getPassword().equals(password)) {
                out.write("success");
            } else {
                out.write("fail");
            }
        } else {
            out.write("fail");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
