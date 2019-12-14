package servlet;

import kit.CmdExecute;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GenerateModel", urlPatterns = "/model/generate")
public class GenerateModel extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取服务器路径
        String uploadPath = request.getServletContext().getRealPath("/");
        // bat文件地址
        String cmdPath = uploadPath+"generate.bat";
        System.out.println("cmdPath = " + cmdPath);
        // 执行bat批处理文件，根据图片集生成模型并打包apk安装文件
        new Thread(() -> {
            CmdExecute.executeCmdFile(cmdPath);
        }).start();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
