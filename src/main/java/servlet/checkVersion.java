package servlet;

import kit.FileOperate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "checkVersion", urlPatterns = "/version/check")
public class checkVersion extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码方式为utf-8
        response.setCharacterEncoding("UTF-8");
        //设置客户端的解码方式为utf-8
        response.setContentType("text/html;charset=utf-8");

        // 获取服务器路径
        String uploadPath = request.getServletContext().getRealPath("/");

        //获取参数
        String clientVersion = request.getParameter("clientVersion");
        System.out.println("clientVersion = " + clientVersion);
        String serverVersion = FileOperate.readTxt(uploadPath + "version.txt");
        System.out.println("serverVersion = " + serverVersion);

        PrintWriter out = response.getWriter();
        if (clientVersion.equals(serverVersion)) {
            out.write("same");
        } else {
            out.write("update");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
