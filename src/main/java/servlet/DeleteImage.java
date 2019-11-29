package servlet;

import factory.DAOFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DeleteImage", urlPatterns = "/image/deleteImage")
public class DeleteImage extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码方式为utf-8
        response.setCharacterEncoding("UTF-8");
        //设置客户端的解码方式为utf-8
        response.setContentType("text/html;charset=utf-8");

        int imageId = Integer.parseInt(request.getParameter("imageId"));

        boolean success = false;
        try {
            success = DAOFactory.getImageDAOInstance().deleteImage(imageId);
        } catch (Exception e) {
            e.printStackTrace();
        }

        PrintWriter out = response.getWriter();
        if (success) {
            out.write("success");
        } else {
            out.write("fail");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
