package servlet;

import com.alibaba.fastjson.JSONObject;
import factory.DAOFactory;
import vo.Label;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ViewLabels", urlPatterns = "/label/viewLabels")
public class ViewLabels extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码方式为utf-8
        response.setCharacterEncoding("UTF-8");
        //设置客户端的解码方式为utf-8
        response.setContentType("text/html;charset=utf-8");

        List<Label> labels = null;
        try {
            labels = DAOFactory.getLabelDAOInstance().viewLabels();
        } catch (Exception e) {
            e.printStackTrace();
        }

        //将结果转换为JSON字符串
        String result = JSONObject.toJSONString(labels);

        PrintWriter out = response.getWriter();
        out.write(result);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
