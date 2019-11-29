package servlet;

import com.alibaba.fastjson.JSONObject;
import factory.DAOFactory;
import vo.Image;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "FindImageByLabel", urlPatterns = "/image/viewImages")
public class FindImageByLabel extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码方式为utf-8
        response.setCharacterEncoding("UTF-8");
        //设置客户端的解码方式为utf-8
        response.setContentType("text/html;charset=utf-8");

        int labelID = Integer.parseInt(request.getParameter("labelId"));

        List<Image> images = null;
        try {
            images = DAOFactory.getImageDAOInstance().findByLabel(labelID);
        } catch (Exception e) {
            e.printStackTrace();
        }

        //将结果转换为JSON字符串
        String result = JSONObject.toJSONString(images);

        PrintWriter out = response.getWriter();
        out.write(result);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
